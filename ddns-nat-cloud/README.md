# 📦 DDNS NATed IP Update via IP Cloud

## 🇬🇧 English

### 📝 Description

Detects your public IP behind NAT using MikroTik IP Cloud and updates DDNS accordingly.

### ⚙️ Configuration

Edit these variables inside the script:

```rsc
:global ddnsuser "youruser"
:global ddnspass "yourpassword"
:global ddnshost "hostname.ddns.net"
:global theinterface "ether1"
```

### 📥 Installation

1. Go to **System > Scripts**
2. Create a script named `ddns-nat-cloud`
3. Paste the contents of `ddns-nat-cloud.rsc`
4. Set permissions: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler Setup

```rsc
/system scheduler
add name="ddns-nat-cloud" interval=5m on-event="/system script run ddns-nat-cloud" policy=read,write,test
```

---

## 🇬🇷 Ελληνικά

### 📝 Περιγραφή

Ανιχνεύει τη δημόσια IP πίσω από NAT μέσω του IP Cloud και ενημερώνει το DDNS.

### ⚙️ Ρυθμίσεις

Αλλάξτε τις εξής μεταβλητές στο script:

```rsc
:global ddnsuser "youruser"
:global ddnspass "yourpassword"
:global ddnshost "hostname.ddns.net"
:global theinterface "ether1"
```

### 📥 Εγκατάσταση

1. Πήγαινε στο **System > Scripts**
2. Δημιούργησε νέο script με όνομα `ddns-nat-cloud`
3. Επικόλλησε το περιεχόμενο του `ddns-nat-cloud.rsc`
4. Ρύθμισε δικαιώματα: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler

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