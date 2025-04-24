# MikroTik Script: Auto Static Route via /30 Peer
# Author: Thanos Pournaras | https://thanosnm.github.io
# Comment: "Auto /30 peer route"
# Description: Calculates peer IP in /30 network (ether1) and adds static routes

# ------------------ REMOVE old peer routes ------------------
/ip route remove [find comment="Auto /30 peer route"]

# ------------------ DEFINE destination networks ------------------
:local targets {"10.10.10.0/24"; "192.168.100.0/24"}

# ------------------ CALCULATE own IP ------------------
:local fullIP [/ip address get [find interface="ether1"] address]
:local ip [:pick $fullIP 0 [:find $fullIP "/"]]

:local o1 [:tonum [:pick $ip 0 [:find $ip "."]]]
:local rest1 [:pick $ip ([:find $ip "."] + 1) [:len $ip]]
:local o2 [:tonum [:pick $rest1 0 [:find $rest1 "."]]]
:local rest2 [:pick $rest1 ([:find $rest1 "."] + 1) [:len $rest1]]
:local o3 [:tonum [:pick $rest2 0 [:find $rest2 "."]]]
:local o4 [:tonum [:pick $rest2 ([:find $rest2 "."] + 1) [:len $rest2]]]

# ------------------ CALCULATE peer IP ------------------
:local baseO4 (($o4 / 4) * 4)
:local peerO4 ($baseO4 + (3 - ($o4 - $baseO4)))
:local peerIP ($o1 . "." . $o2 . "." . $o3 . "." . $peerO4)

# ------------------ ADD new routes ------------------
:foreach dst in=$targets do={
    /ip route add dst-address=$dst gateway=$peerIP comment="Auto /30 peer route"
}
