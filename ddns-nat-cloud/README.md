
# DDNS μέσω MikroTik Cloud

🇬🇷 *English below*

## 🌐 Αυτόματο DDNS update για Router πίσω από NAT

Αυτό το script ενημερώνει δυναμικά το DynDNS hostname με την **public IP από το /ip cloud** του MikroTik router.  
Ιδανικό όταν ο router βρίσκεται **πίσω από NAT** και δεν έχει απευθείας δημόσια IP σε κάποιο interface.

### ✅ Οδηγίες

1. Ρύθμισε `hostname`, `username`, `password`
2. Δημιούργησε script στο **System > Scripts**
3. Πρόσθεσε scheduler:

```shell
/system scheduler
add name="ddnsUpdate" interval=5m on-event="/system script run ddns-nat-cloud" policy=read,write,test
```

---

## DDNS via MikroTik Cloud (English)

This script updates your DynDNS hostname using the **public IP retrieved via `/ip cloud`**.  
Perfect for setups where your MikroTik is **behind NAT** and has no public IP on an interface.

### ✅ Instructions

1. Configure `hostname`, `username`, `password`
2. Add the script in **System > Scripts**
3. Set scheduler:

```shell
/system scheduler
add name="ddnsUpdate" interval=5m on-event="/system script run ddns-nat-cloud" policy=read,write,test
```



## 👤 Author

**Thanos Pournaras**  
🔗 https://thanosnm.github.io

