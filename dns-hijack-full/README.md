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

