# 📦 DHCP WAN Failover

## 🇬🇧 English

### 📝 Description

Monitors the primary WAN (ether1) and switches to backup WAN (ether2) if it fails. Reverts automatically when primary is restored.

### ⚙️ Configuration

Edit these variables inside the script:

```rsc
:local testIP1 "1.1.1.1"
:local testIP2 "9.9.9.9"
:local pingCount 3
:local emailTo "you@example.com"
:local emailSubject "FAILOVER Triggered"
:local emailBody "ether1 down, switching to backup"
```

### 📥 Installation

1. Go to **System > Scripts**
2. Create a script named `failover-dhcp-wan`
3. Paste the contents of `failover-dhcp-wan.rsc`
4. Set permissions: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler Setup

```rsc
/system scheduler
add name="failover-dhcp-wan" interval=1m on-event="/system script run failover-dhcp-wan" policy=read,write,test
```

---

## 🇬🇷 Ελληνικά

### 📝 Περιγραφή

Παρακολουθεί το κύριο WAN (ether1) και αν αποτύχει, γυρνά σε εφεδρικό (ether2). Επιστρέφει όταν αποκατασταθεί το κύριο.

### ⚙️ Ρυθμίσεις

Αλλάξτε τις εξής μεταβλητές στο script:

```rsc
:local testIP1 "1.1.1.1"
:local testIP2 "9.9.9.9"
:local pingCount 3
:local emailTo "you@example.com"
:local emailSubject "FAILOVER Triggered"
:local emailBody "ether1 down, switching to backup"
```

### 📥 Εγκατάσταση

1. Πήγαινε στο **System > Scripts**
2. Δημιούργησε νέο script με όνομα `failover-dhcp-wan`
3. Επικόλλησε το περιεχόμενο του `failover-dhcp-wan.rsc`
4. Ρύθμισε δικαιώματα: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler

```rsc
/system scheduler
add name="failover-dhcp-wan" interval=1m on-event="/system script run failover-dhcp-wan" policy=read,write,test
```

---

## 👤 Author / Δημιουργός

**Thanos Pournaras**  
🔗 https://thanosnm.github.io

## ☕ Support My Work / Στήριξέ με

[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/pournarasaa)