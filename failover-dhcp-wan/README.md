# 🌐 MikroTik DHCP Failover Script

This MikroTik script automatically switches internet connection from primary (ether1) to backup (ether2) interface when the primary goes offline.

## 🔧 Configuration

Edit the following lines at the top of the script to suit your network:

```rsc
:local testIP1 "1.1.1.1"
:local testIP2 "9.9.9.9"
:local pingCount 3
:local emailTo "you@example.com"
:local emailSubject "FAILOVER Triggered"
:local emailBody "ether1 down, switching to backup"
```

## ⚙️ Installation

1. Go to **System > Scripts** on your MikroTik router
2. Create a new script, name it `failover-script`
3. Paste the contents of `failover-final.rsc` into the script
4. Set permissions: `read`, `write`, `policy`, `test`

## ⏱ Scheduler

To run the script every 60 seconds, add the following to the scheduler:

```rsc
/system scheduler
add name="Failover Check" interval=1m on-event="/system script run failover-script" policy=read,write,test
```

---

## 👤 Author

**Thanos Pournaras**  
🔗 [https://thanosnm.github.io](https://thanosnm.github.io)

---

## ☕ Support My Work

If this helped you, feel free to support me:

[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/pournarasaa)