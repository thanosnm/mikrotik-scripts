# Admin Login Alert Script

🇬🇧 *English below*

## 🔐 Ειδοποίηση για Συνδέσεις Διαχειριστών

Αυτό το script παρακολουθεί το system log και στέλνει email κάθε φορά που κάποιος συνδέεται στον MikroTik router με admin access.

### ✅ Εντοπίζει:
- Username (π.χ. admin)
- IP/Hostname από όπου έγινε login
- Τύπος πρόσβασης (Winbox, SSH, Web, API)
- Χρόνος σύνδεσης

---

## 🔐 Admin Login Alert (MikroTik)

This script watches the log and alerts via email whenever someone logs in to the MikroTik router.

### ✅ Captures:
- Username
- Remote IP/Hostname
- Access method (Winbox, SSH, Web, API)
- Login timestamp

---

## ⚙️ Setup

1. Paste `script.txt` into a MikroTik script named `admin-login-alert`
2. Replace `youremail@gmail.com` with your email
3. Add scheduler using `scheduler.rsc`:

```shell
/system scheduler
add name="admin-login-alert" interval=1m on-event="/system script run admin-login-alert" policy=read,write,test
```

## 👤 Author

**Thanos Pournaras**  
🔗 https://thanosnm.github.io
