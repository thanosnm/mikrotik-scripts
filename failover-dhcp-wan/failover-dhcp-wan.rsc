# MikroTik DHCP WAN Failover Script (Static Route Based)
# Made & Powered by Thanos Pournaras
# https://thanosnm.github.io

# === CONFIG ===
:local testIP1 "1.1.1.1"
:local testIP2 "9.9.9.9"
:local pingCount 3
:local emailTo "you@example.com"
:local emailSubject "FAILOVER Triggered"
:local emailBody "ether1 down, switching to backup"

:log info "[FAILOVER] Starting failover check..."

:local gw1 [/ip dhcp-client get [find interface="ether1"] gateway]
:local gw2 [/ip dhcp-client get [find interface="ether2"] gateway]

:log info "[FAILOVER] ether1 gateway: $gw1"
:log info "[FAILOVER] ether2 gateway: $gw2"

:if ($gw1 != "") do={

    /ip route
    :local primaryList [/ip route find comment="Primary WAN"]
    :local backupList [/ip route find comment="Backup WAN"]
    :local primary [:pick $primaryList 0]
    :local backup [:pick $backupList 0]

    # Clean previous test routes before re-adding
    /ip route remove [find comment="Failover Ping Host"]

    :foreach ip in={$testIP1; $testIP2} do={
        :local ip32 ([:tostr $ip] . "/32")
        /ip route add dst-address=$ip32 gateway=$gw1 comment="Failover Ping Host" check-gateway=ping disabled=no
    }

    :local count1 [/tool ping address=$testIP1 interface=ether1 count=$pingCount]
    :local count2 [/tool ping address=$testIP2 interface=ether1 count=$pingCount]

    :if (($count1 > 0) or ($count2 > 0)) do={
        :log info "[FAILOVER] ether1 is reachable → restoring primary route"
        :if ($primary != "") do={ /ip route set $primary distance=1 gateway=$gw1 }
        :if ($backup != "") do={ /ip route set $backup distance=3 gateway=$gw2 }
    } else={
        :log warning "[FAILOVER] ether1 unreachable → switching to backup"
        :delay 10
        /tool e-mail send to=$emailTo subject=$emailSubject body=$emailBody
        :if ($primary != "") do={ /ip route set $primary distance=3 gateway=$gw1 }
        :if ($backup != "") do={ /ip route set $backup distance=1 gateway=$gw2 }
    }

} else={
    :log warning "[FAILOVER] ether1 has no gateway, skipping check"
}