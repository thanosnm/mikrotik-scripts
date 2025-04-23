# 📦 DDNS Update via PPPoE

## 🇬🇧 English

### 📝 Description

Uses the IP from PPPoE interface to update your DDNS provider.

### ⚙️ Configuration

Edit these variables inside the script:

```rsc
:global ddnsuser "youruser"
:global ddnspass "yourpassword"
:global ddnshost "hostname.ddns.net"
:global theinterface "pppoe-out1"
```

### 📥 Installation

1. Go to **System > Scripts**
2. Create a script named `ddns-pppoe`
3. Paste the contents of `ddns-pppoe.rsc`
4. Set permissions: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler Setup

```rsc
/system scheduler
add name="ddns-pppoe" interval=5m on-event="/system script run ddns-pppoe" policy=read,write,test
```

---

## 🇬🇷 Ελληνικά

### 📝 Περιγραφή

Χρησιμοποιεί την IP του PPPoE interface για να ενημερώσει το DDNS.

### ⚙️ Ρυθμίσεις

Αλλάξτε τις εξής μεταβλητές στο script:

```rsc
:global ddnsuser "youruser"
:global ddnspass "yourpassword"
:global ddnshost "hostname.ddns.net"
:global theinterface "pppoe-out1"
```

### 📥 Εγκατάσταση

1. Πήγαινε στο **System > Scripts**
2. Δημιούργησε νέο script με όνομα `ddns-pppoe`
3. Επικόλλησε το περιεχόμενο του `ddns-pppoe.rsc`
4. Ρύθμισε δικαιώματα: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler

```rsc
/system scheduler
add name="ddns-pppoe" interval=5m on-event="/system script run ddns-pppoe" policy=read,write,test
```

---

## 👤 Author / Δημιουργός

**Thanos Pournaras**  
🔗 https://thanosnm.github.io

## ☕ Support My Work / Στήριξέ με

[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/pournarasaa)