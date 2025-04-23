# 📦 Auto Backup Script

## 🇬🇧 English

### 📝 Description

This script automatically backs up your MikroTik configuration and emails it to a specified address.

### ⚙️ Configuration

Edit these variables inside the script:

```rsc
:local emailTo "you@example.com"
:local backupName "router-backup"
/system backup save name=\$backupName
/export file=\$backupName
```

### 📥 Installation

1. Go to **System > Scripts**
2. Create a script named `auto-backup`
3. Paste the contents of `auto-backup.rsc`
4. Set permissions: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler Setup

```rsc
/system scheduler
add name="auto-backup" interval=1d on-event="/system script run auto-backup" policy=read,write,test
```

---

## 🇬🇷 Ελληνικά

### 📝 Περιγραφή

Αυτό το script δημιουργεί αυτόματα αντίγραφα ασφαλείας του MikroTik και τα στέλνει μέσω email.

### ⚙️ Ρυθμίσεις

Αλλάξτε τις εξής μεταβλητές στο script:

```rsc
:local emailTo "you@example.com"
:local backupName "router-backup"
/system backup save name=\$backupName
/export file=\$backupName
```

### 📥 Εγκατάσταση

1. Πήγαινε στο **System > Scripts**
2. Δημιούργησε νέο script με όνομα `auto-backup`
3. Επικόλλησε το περιεχόμενο του `auto-backup.rsc`
4. Ρύθμισε δικαιώματα: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler

```rsc
/system scheduler
add name="auto-backup" interval=1d on-event="/system script run auto-backup" policy=read,write,test
```

---

## 👤 Author / Δημιουργός

**Thanos Pournaras**  
🔗 https://thanosnm.github.io

## ☕ Support My Work / Στήριξέ με

[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/pournarasaa)