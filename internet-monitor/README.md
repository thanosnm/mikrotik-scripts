# Internet Monitor

🇬🇧 *English below*

## 📡 Παρακολούθηση σύνδεσης Internet (MikroTik RouterOS)

Αυτό το script ελέγχει αν υπάρχει σύνδεση στο internet (μέσω ping σε 8.8.8.8) και αν αποτύχει επανεκκινεί την WAN θύρα (`ether1`).

### ✅ Οδηγίες

1. Πήγαινε στο **System > Scripts** και φτιάξε ένα νέο script με όνομα `internet-monitor`
2. Κάνε επικόλληση το περιεχόμενο από το `script.txt`
3. Δώσε permissions: `read`, `write`, `test`
4. Πρόσθεσε scheduler από το `scheduler.rsc` ή χειροκίνητα με:

```shell
/system scheduler
add name="internetCheck" interval=15s on-event="/system script run internet-monitor" policy=read,write,test
```

---

## 📡 Internet Connectivity Monitor (MikroTik RouterOS)

This script checks for internet access (via ping to 8.8.8.8), and if it fails, it restarts the WAN interface (`ether1`).

### ✅ Installation

1. Go to **System > Scripts** and create a new script named `internet-monitor`
2. Paste the contents of `script.txt` into it
3. Set permissions: `read`, `write`, `test`
4. Add the scheduler using `scheduler.rsc` or manually:

```shell
/system scheduler
add name="internetCheck" interval=15s on-event="/system script run internet-monitor" policy=read,write,test
```

---


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
