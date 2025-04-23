# 📦 Device Connection Logger

## 🇬🇧 English

### 📝 Description

Logs new MAC addresses and optionally sends an email alert when new devices connect.

### ⚙️ Configuration

Edit these variables inside the script:

```rsc
:local emailTo "you@example.com"
:local emailSubject "New device detected"
:local emailBody "A new MAC address has appeared on your network."
```

### 📥 Installation

1. Go to **System > Scripts**
2. Create a script named `device-logger`
3. Paste the contents of `device-logger.rsc`
4. Set permissions: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler Setup

```rsc
/system scheduler
add name="device-logger" interval=1m on-event="/system script run device-logger" policy=read,write,test
```

---

## 🇬🇷 Ελληνικά

### 📝 Περιγραφή

Καταγράφει νέες διευθύνσεις MAC και στέλνει email ειδοποιήσεις όταν εμφανίζονται νέες συσκευές.

### ⚙️ Ρυθμίσεις

Αλλάξτε τις εξής μεταβλητές στο script:

```rsc
:local emailTo "you@example.com"
:local emailSubject "New device detected"
:local emailBody "A new MAC address has appeared on your network."
```

### 📥 Εγκατάσταση

1. Πήγαινε στο **System > Scripts**
2. Δημιούργησε νέο script με όνομα `device-logger`
3. Επικόλλησε το περιεχόμενο του `device-logger.rsc`
4. Ρύθμισε δικαιώματα: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler

```rsc
/system scheduler
add name="device-logger" interval=1m on-event="/system script run device-logger" policy=read,write,test
```

---

## 👤 Author / Δημιουργός

**Thanos Pournaras**  
🔗 https://thanosnm.github.io

## ☕ Support My Work / Στήριξέ με

[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/pournarasaa)