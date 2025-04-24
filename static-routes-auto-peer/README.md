# 📡 MikroTik Static Route via /30 Peer

🇬🇷 *English below*

## 🔧 Περιγραφή

Αυτό το script:
- Βρίσκει τη διεύθυνση IP του peer router σε `/30` subnet στο `ether1`
- Καταγράφει static routes προς προορισμούς που ορίζονται
- Καθαρίζει τις παλιές static routes με το ίδιο comment

## 🛠 Χρήση

1. Πήγαινε στο **System > Scripts**
2. Δημιούργησε νέο script και επικόλλησε το περιεχόμενο του `.rsc`
3. Ή ανέβασε το `.rsc` και κάνε:
```shell
/import file-name=static-routes-auto-peer.rsc
```

---

## 🔧 Description

This script:
- Detects the peer IP in a `/30` point-to-point setup on `ether1`
- Adds static routes to defined networks
- Removes any previous routes with the same comment

## ✅ Minimum RouterOS: 7.x

---

## 👤 Author
**Thanos Pournaras**  
🔗 https://thanosnm.github.io

## ☕ Support My Work
[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa)](https://buymeacoffee.com/pournarasaa)
