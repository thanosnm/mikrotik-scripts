# Device Logger Script

🇬🇧 *English below*

## 📡 Καταγραφή Νέων Συσκευών (MikroTik)

Αυτό το script παρακολουθεί τις συνδεδεμένες συσκευές στο δίκτυο (μέσω ARP), και σε ειδοποιεί όταν εμφανιστεί νέα ή άγνωστη συσκευή.

### ✅ Λειτουργίες
- Καταγραφή όλων των MAC/IP από το ARP table
- Αν βρεθεί νέα συσκευή (που δεν είναι στο ignore list), στέλνει email
- Δεν στέλνει τίποτα αν δεν αλλάξει τίποτα (έξυπνο logging)
- Η λίστα γνωστών συσκευών αποθηκεύεται αυτόματα

---

## 📡 Active Device Logger (MikroTik)

This script monitors the network's connected devices and alerts you when a new or unknown device appears.

### ✅ Features
- Scans ARP table (MAC/IP/interface)
- Sends email for new devices (not in ignore list)
- Silent when no changes = no spam
- Keeps memory of previously seen devices

### ⚙️ Setup

1. Paste the contents of `script.txt` into a MikroTik script named `device-logger`
2. Update your email address and ignoreList MACs
3. Add scheduler using `scheduler.rsc` or manually:

```shell
/system scheduler
add name="device-logger" interval=5m on-event="/system script run device-logger" policy=read,write,test
```


## 👤 Author

**Thanos Pournaras**  
🔗 https://thanosnm.github.io
