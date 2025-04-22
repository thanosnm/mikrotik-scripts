# Auto Backup Script

🇬🇧 *English below*

## 💾 Αυτόματο Backup & Αποστολή με Email (MikroTik)

Το script κάνει αυτόματα export και backup της διαμόρφωσης του router κάθε μέρα και στέλνει τα αρχεία στο email σου.

### ✅ Οδηγίες

1. Πήγαινε στο **System > Scripts** και φτιάξε νέο script `auto-backup`
2. Επικόλλησε το περιεχόμενο από το `script.txt`
3. Ρύθμισε SMTP στο `/tool e-mail`
4. Πρόσθεσε scheduler ή χρησιμοποίησε `scheduler.rsc`

---

## 💾 Auto Backup & Email (MikroTik)

This script automatically exports the router config daily and sends both `.backup` and `.rsc` files via email.

### ✅ Installation

1. Go to **System > Scripts** and create a script called `auto-backup`
2. Paste contents of `script.txt`
3. Configure SMTP in `/tool e-mail`
4. Add scheduler using `scheduler.rsc` or manually

## 👤 Author

**Thanos Pournaras**  
🔗 https://thanosnm.github.io
