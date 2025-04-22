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
