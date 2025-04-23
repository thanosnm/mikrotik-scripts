# 📦 DNS Hijack Detection

## 🇬🇧 English

### 📝 Description

Compares DNS resolutions with expected IPs and alerts if something suspicious is detected.

### ⚙️ Configuration

Edit these variables inside the script:

```rsc
:local domains {"example.com";"one.one.one.one"}
:local expectedIPs {"93.184.216.34";"1.1.1.1"}
:local emailTo "you@example.com"
```

### 📥 Installation

1. Go to **System > Scripts**
2. Create a script named `dns-hijack-full`
3. Paste the contents of `dns-hijack-full.rsc`
4. Set permissions: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler Setup

```rsc
/system scheduler
add name="dns-hijack-full" interval=5m on-event="/system script run dns-hijack-full" policy=read,write,test
```

---

## 🇬🇷 Ελληνικά

### 📝 Περιγραφή

Συγκρίνει αποτελέσματα DNS με αναμενόμενες IP και ειδοποιεί αν υπάρξει απόκλιση.

### ⚙️ Ρυθμίσεις

Αλλάξτε τις εξής μεταβλητές στο script:

```rsc
:local domains {"example.com";"one.one.one.one"}
:local expectedIPs {"93.184.216.34";"1.1.1.1"}
:local emailTo "you@example.com"
```

### 📥 Εγκατάσταση

1. Πήγαινε στο **System > Scripts**
2. Δημιούργησε νέο script με όνομα `dns-hijack-full`
3. Επικόλλησε το περιεχόμενο του `dns-hijack-full.rsc`
4. Ρύθμισε δικαιώματα: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler

```rsc
/system scheduler
add name="dns-hijack-full" interval=5m on-event="/system script run dns-hijack-full" policy=read,write,test
```

---

## 👤 Author / Δημιουργός

**Thanos Pournaras**  
🔗 https://thanosnm.github.io

## ☕ Support My Work / Στήριξέ με

[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/pournarasaa)