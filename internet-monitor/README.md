# 📦 Internet Connectivity Monitor

## 🇬🇧 English

### 📝 Description

Pings 8.8.8.8 and restarts the WAN interface if no internet connectivity is detected.

### ⚙️ Configuration

Edit these variables inside the script:

```rsc
:local wanInterface "ether1"
:local pingTarget "8.8.8.8"
:local retryCount 3
```

### 📥 Installation

1. Go to **System > Scripts**
2. Create a script named `internet-monitor`
3. Paste the contents of `internet-monitor.rsc`
4. Set permissions: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler Setup

```rsc
/system scheduler
add name="internet-monitor" interval=15s on-event="/system script run internet-monitor" policy=read,write,test
```

---

## 🇬🇷 Ελληνικά

### 📝 Περιγραφή

Κάνει ping στη διεύθυνση 8.8.8.8 και επανεκκινεί την WAN αν δεν υπάρχει σύνδεση στο διαδίκτυο.

### ⚙️ Ρυθμίσεις

Αλλάξτε τις εξής μεταβλητές στο script:

```rsc
:local wanInterface "ether1"
:local pingTarget "8.8.8.8"
:local retryCount 3
```

### 📥 Εγκατάσταση

1. Πήγαινε στο **System > Scripts**
2. Δημιούργησε νέο script με όνομα `internet-monitor`
3. Επικόλλησε το περιεχόμενο του `internet-monitor.rsc`
4. Ρύθμισε δικαιώματα: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler

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