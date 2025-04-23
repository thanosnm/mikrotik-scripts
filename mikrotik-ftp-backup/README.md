# 📦 Mikrotik FTP Backup Script

## 🇬🇧 English

### 📝 Description

This script automatically backs up your MikroTik configuration and uploads it to a remote FTP server.

### ⚙️ Configuration

Edit these variables inside the script:

```rsc
:local userID "site42"
:local ftpAddress "1.2.3.4"
:local ftpUser "ftp_username"
:local ftpPass "ftp_password"
/system backup save name=\$filename
```

### 📥 Installation

1. Go to **System > Scripts**
2. Create a script named `ftp_backup_script`
3. Paste the contents of `backup_script.rsc`
4. Set permissions: `ftp`, `read`, `write`, `test`

### ⏱️ Scheduler Setup

```rsc
/system scheduler
add name="weekly_ftp_backup" interval=7d start-time=02:00:00 on-event="/system script run ftp_backup_script" policy=ftp,read,write,test
```

---

## 🇬🇷 Ελληνικά

### 📝 Περιγραφή

Αυτό το script δημιουργεί αυτόματα αντίγραφα ασφαλείας από MikroTik και τα ανεβάζει σε απομακρυσμένο FTP server.

### ⚙️ Ρυθμίσεις

Αλλάξτε τις εξής μεταβλητές στο script:

```rsc
:local userID "site42"
:local ftpAddress "1.2.3.4"
:local ftpUser "ftp_username"
:local ftpPass "ftp_password"
/system backup save name=\$filename
```

### 📥 Εγκατάσταση

1. Πήγαινε στο **System > Scripts**
2. Δημιούργησε νέο script με όνομα `ftp_backup_script`
3. Επικόλλησε το περιεχόμενο του `backup_script.rsc`
4. Ρύθμισε δικαιώματα: `ftp`, `read`, `write`, `test`

### ⏱️ Scheduler

```rsc
/system scheduler
add name="weekly_ftp_backup" interval=7d start-time=02:00:00 on-event="/system script run ftp_backup_script" policy=ftp,read,write,test
```

---

## 👤 Author / Δημιουργός

**Thanos Pournaras**  
🔗 https://thanosnm.github.io

## ☕ Support My Work / Στήριξέ με

[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/pournarasaa)
