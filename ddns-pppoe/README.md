# DynDNS (PPPoE)

🇬🇧 *English below*

## 🌐 Ενημέρωση DynDNS μέσω PPPoE Interface

Αυτό το script ενημερώνει το DynDNS hostname χρησιμοποιώντας τη δημόσια IP από ένα PPPoE interface (π.χ. `pppoe-out1`).

### ✅ Οδηγίες

1. Πήγαινε στο **System > Scripts** και δημιούργησε νέο script με όνομα `ddns-pppoe`
2. Επικόλλησε το περιεχόμενο από το `script.txt`
3. Δώσε permissions: `read`, `write`, `test`
4. Πρόσθεσε scheduler από `scheduler.rsc` ή χειροκίνητα με:

```shell
/system scheduler
add name="DynDNS-PPPoE" interval=5m on-event="/system script run ddns-pppoe" policy=read,write,test
```

---

## 🌐 DynDNS Update via PPPoE Interface

This script updates your DynDNS hostname using the public IP assigned to a PPPoE interface (e.g. `pppoe-out1`).

### ✅ Installation

1. Go to **System > Scripts** and create a new script named `ddns-pppoe`
2. Paste the contents of `script.txt` into it
3. Set permissions: `read`, `write`, `test`
4. Add the scheduler using `scheduler.rsc` or manually with:

```shell
/system scheduler
add name="DynDNS-PPPoE" interval=5m on-event="/system script run ddns-pppoe" policy=read,write,test
```

---


## 👤 Author

**Thanos Pournaras**  
🔗 https://thanosnm.github.io
