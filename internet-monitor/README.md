# 📦 Internet Connectivity Monitor

## 🇬🇧 English

### 📝 Description

Monitors internet access via ping and restarts the WAN interface if no response is received.

### ⚙️ Configuration

Before running the script, make sure to configure these values inside the script:

```rsc
:local emailTo "your@email.com"
:local backupName "router-backup"
/system backup save name=$backupName
/export file=$backupName
```

Ensure that email settings are properly configured in `/tool e-mail`.

### 📥 Installation

1. Go to **System > Scripts**
2. Create a new script named `internet-monitor`
3. Paste the contents of `internet-monitor.rsc`
4. Set permissions: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler Setup

To run the script every day:

```rsc
/system scheduler
add name="internet-monitor" interval=15s on-event="/system script run internet-monitor" policy=read,write,test
```

---

## 🇬🇷 Ελληνικά

### 📝 Περιγραφή

Παρακολουθεί τη σύνδεση στο διαδίκτυο με ping και κάνει επανεκκίνηση της WAN εάν δεν υπάρχει απάντηση.

### ⚙️ Ρυθμίσεις

Πριν εκτελέσετε το script, ρυθμίστε τις εξής μεταβλητές μέσα στο script:

```rsc
:local emailTo "your@email.com"
:local backupName "router-backup"
/system backup save name=$backupName
/export file=$backupName
```

Βεβαιωθείτε ότι το email είναι σωστά ρυθμισμένο στο `/tool e-mail`.

### 📥 Εγκατάσταση

1. Πήγαινε στο **System > Scripts**
2. Δημιούργησε νέο script με όνομα `internet-monitor`
3. Επικόλλησε το περιεχόμενο του `internet-monitor.rsc`
4. Ρύθμισε δικαιώματα: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler

Για να τρέχει κάθε μέρα:

```rsc
/system scheduler
add name="internet-monitor" interval=15s on-event="/system script run internet-monitor" policy=read,write,test
```

---

## 👤 Author / Δημιουργός

**Thanos Pournaras**  
🔗 https://thanosnm.github.io

## ☕ Support My Work / Στήριξέ με

[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/pournarasaa)