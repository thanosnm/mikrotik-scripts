# 📦 DDNS NATed IP Update via IP Cloud

## 🇬🇧 English

### 📝 Description

Detects your public IP address behind NAT using MikroTik's IP Cloud and updates your DDNS provider accordingly.

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
2. Create a new script named `ddns-nat-cloud`
3. Paste the contents of `ddns-nat-cloud.rsc`
4. Set permissions: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler Setup

To run the script every day:

```rsc
/system scheduler
add name="ddns-nat-cloud" interval=5m on-event="/system script run ddns-nat-cloud" policy=read,write,test
```

---

## 🇬🇷 Ελληνικά

### 📝 Περιγραφή

Ανιχνεύει τη δημόσια IP σας πίσω από NAT μέσω του MikroTik IP Cloud και ενημερώνει τον πάροχο DDNS.

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
2. Δημιούργησε νέο script με όνομα `ddns-nat-cloud`
3. Επικόλλησε το περιεχόμενο του `ddns-nat-cloud.rsc`
4. Ρύθμισε δικαιώματα: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler

Για να τρέχει κάθε μέρα:

```rsc
/system scheduler
add name="ddns-nat-cloud" interval=5m on-event="/system script run ddns-nat-cloud" policy=read,write,test
```

---

## 👤 Author / Δημιουργός

**Thanos Pournaras**  
🔗 https://thanosnm.github.io

## ☕ Support My Work / Στήριξέ με

[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/pournarasaa)