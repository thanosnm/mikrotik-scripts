# DNS Hijack Detector (Multi-IP + Email + Log)

🇬🇷 *English below*

## 🧠 Ανίχνευση DNS Hijack με ειδοποίηση (log + email)

Ελέγχει γνωστά domains και συγκρίνει με πολλές έγκυρες IP. Αν βρεθεί λάθος, στέλνει email και γράφει log warning.

### ✅ Οδηγίες

1. System > Scripts → νέο script `dns-hijack-detector`
2. Επικόλληση από `script.txt`
3. Δώσε permissions: read, write, test
4. Ρύθμισε το `/tool e-mail` για αποστολή
5. Πρόσθεσε scheduler:

```shell
/system scheduler
add name="dnsHijack" interval=10m on-event="/system script run dns-hijack-detector" policy=read,write,test
```

---

## 🧠 DNS Hijack Detection (with multi-IP and email)

Checks known domains against multiple expected IPs. If the resolved result is not in the list, logs a warning and sends an email alert.

### ✅ Setup

1. Go to System > Scripts → add `dns-hijack-detector`
2. Paste `script.txt` into it
3. Set permissions: read, write, test
4. Configure `/tool e-mail` SMTP
5. Add scheduler:

```shell
/system scheduler
add name="dnsHijack" interval=10m on-event="/system script run dns-hijack-detector" policy=read,write,test
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
