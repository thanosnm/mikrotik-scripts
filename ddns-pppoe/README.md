# DynDNS Update Script (PPPoE)

Updates DynDNS hostname using the IP address assigned to a PPPoE interface.

## Features

- Pulls IP directly from a local interface (e.g. `pppoe-out1`)
- Removes CIDR from the IP
- Avoids file writes, stores only in global variable
- Updates only when IP changes

## Setup

1. Replace:
   - `ddnsUser`, `ddnsPass`, `ddnsHost`
   - `theInterface` (e.g. `pppoe-out1`)

2. Add script + scheduler:

```
/system script add name=ddns-pppoe source=(paste script here)
/system scheduler add name="DynDNS-PPPoE" interval=5m on-event="/system script run ddns-pppoe"
```

Made by Thanos Pournaras  
https://thanosnm.github.io  
https://github.com/thanosnm
