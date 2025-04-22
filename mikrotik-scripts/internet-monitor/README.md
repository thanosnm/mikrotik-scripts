# Internet Monitor

This script checks for internet connectivity and restarts the `ether1` interface if it fails to reach `8.8.8.8`.

## Installation

1. Go to **System > Scripts** and create a script named `internet-monitor`
2. Paste the contents of `script.txt` inside it
3. Set permissions: `read`, `write`, `test`
4. Add the scheduler using the provided `scheduler.rsc` or manually:

```shell
/system scheduler
add name="internetCheck" interval=15s on-event="/system script run internet-monitor" policy=read,write,test
```

## Created by

**Thanos Pournaras**  
🔗 https://thanosnm.github.io
