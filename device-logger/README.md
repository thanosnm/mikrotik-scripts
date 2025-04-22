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

---

<div align="center" style="max-width: 700px; margin: 2em auto; padding: 1em; background: #333; color: #f1f1f1; border-radius: 10px; text-align: center;">
  <p style="font-size: 1.1em; font-weight: bold;">
    ✅ Δούλεψε το script; Σου έλυσε τα χέρια;
  </p>
  <p style="margin: 0.5em 0;">Τότε... 🤝 <strong>χρωστάς έναν καφέ!</strong></p>

  <p style="font-size: 1.1em; font-weight: bold; margin-top: 1em;">
    ✅ Did this script help you out?
  </p>
  <p style="margin: 0.5em 0;">Then... 🤝 <strong>you owe me a coffee!</strong></p>

  <a href="https://buymeacoffee.com/pournarasaa" target="_blank" style="display: inline-block; margin-top: 10px;">
    <img src="https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff" alt="Buy Me A Coffee" style="height: 42px;">
  </a>
</div>
