# Auto Backup Script

🇬🇧 *English below*

## 💾 Αυτόματο Backup & Αποστολή με Email (MikroTik)

Το script κάνει αυτόματα export και backup της διαμόρφωσης του router κάθε μέρα και στέλνει τα αρχεία στο email σου.

### ✅ Οδηγίες

1. Πήγαινε στο **System > Scripts** και φτιάξε νέο script `auto-backup`
2. Επικόλλησε το περιεχόμενο από το `script.txt`
3. Ρύθμισε SMTP στο `/tool e-mail` (δες παρακάτω)
4. Πρόσθεσε scheduler ή χρησιμοποίησε `scheduler.rsc`

### ✉️ Απαραίτητες Ρυθμίσεις για Email

```mikrotik
/tool e-mail
set address=smtp.gmail.com port=587 start-tls=yes from=youremail@gmail.com user=youremail@gmail.com password=yourpassword
```

Δοκιμή:
```mikrotik
/tool e-mail send to=youremail@gmail.com subject="Test Email" body="MikroTik Email Test"
```

---

## 💾 Auto Backup & Email (MikroTik)

This script automatically exports the router config daily and sends both `.backup` and `.rsc` files via email.

### ✅ Installation

1. Go to **System > Scripts** and create a script called `auto-backup`
2. Paste contents of `script.txt`
3. Set up email SMTP in `/tool e-mail` (see below)
4. Add scheduler using `scheduler.rsc` or manually

### ✉️ Email Configuration Required

```mikrotik
/tool e-mail
set address=smtp.gmail.com port=587 start-tls=yes from=youremail@gmail.com user=youremail@gmail.com password=yourpassword
```

Send test:
```mikrotik
/tool e-mail send to=youremail@gmail.com subject="Test Email" body="MikroTik Email Test"
```

## 👤 Author

**Thanos Pournaras**  
🔗 https://thanosnm.github.io

---

    <img src="https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff" alt="Buy Me A Coffee" style="height: 42px;">
  </a>
</div>

