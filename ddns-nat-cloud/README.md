# DynDNS NAT (via MikroTik Cloud)

Updates DynDNS hostname using the public IP retrieved from MikroTik's built-in IP Cloud.

## Features

- Uses `/ip cloud get public-address`
- Strips port from IP if needed
- Avoids repeated updates using a global variable
- Does not write to files
- Compatible with NAT environments

## Setup

- Replace:
  - `ddnsUser`, `ddnsPass`, `ddnsHost`
- Add the script and scheduler:

```
/system script add name=ddns-nat-cloud source=(paste script here)
/system scheduler add name="DynDNS-NAT" interval=5m on-event="/system script run ddns-nat-cloud"
```

Made by Thanos Pournaras  
https://thanosnm.github.io  
https://github.com/thanosnm
