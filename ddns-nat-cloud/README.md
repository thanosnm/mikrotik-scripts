# DynDNS (NAT + Cloud IP)

🇬🇧 *English below*

## ☁️ Ενημέρωση DynDNS μέσω MikroTik IP Cloud

Αυτό το script ενημερώνει το DynDNS hostname χρησιμοποιώντας τη δημόσια IP που λαμβάνεται από το built-in MikroTik IP Cloud. Χρήσιμο όταν ο router βρίσκεται πίσω από NAT/modem.

### ✅ Οδηγίες

1. Πήγαινε στο **System > Scripts** και δημιούργησε νέο script με όνομα `ddns-nat-cloud`
2. Επικόλλησε το περιεχόμενο από το `script.txt`
3. Δώσε permissions: `read`, `write`, `test`
4. Πρόσθεσε scheduler από `scheduler.rsc` ή χειροκίνητα με:

```shell
/system scheduler
add name="DynDNS-NAT" interval=5m on-event="/system script run ddns-nat-cloud" policy=read,write,test
```

---

## ☁️ DynDNS Update using MikroTik IP Cloud

This script updates your DynDNS hostname using the public IP fetched from MikroTik's built-in IP Cloud service. Useful when the router is behind a NAT/modem.

### ✅ Installation

1. Go to **System > Scripts** and create a new script named `ddns-nat-cloud`
2. Paste the contents of `script.txt` into it
3. Set permissions: `read`, `write`, `test`
4. Add the scheduler using `scheduler.rsc` or manually with:

```shell
/system scheduler
add name="DynDNS-NAT" interval=5m on-event="/system script run ddns-nat-cloud" policy=read,write,test
```

---

## 👤 Author

**Thanos Pournaras**  
🔗 https://thanosnm.github.io  
🛠️ https://github.com/thanosnm


---

## ☕ Στήριξέ με / Support My Work

🇬🇷 Είμαι δικτυάς και εκπαιδευτής με εμπειρία σε MikroTik, Ubiquiti και TP-Link. Αν βρήκες χρήσιμο το script, μπορείς να με στηρίξεις με έναν καφέ!  
🇬🇧 I’m a network engineer & trainer focused on MikroTik, Ubiquiti and TP-Link networks. If you found this script useful, feel free to support me!

[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/pournarasaa)
