# 📦 Smart Network Check

## 🇬🇧 English

### 📝 Description

Performs layered connectivity checks and logs problems or restarts WAN if needed.

### ⚙️ Configuration

Edit these variables inside the script:

```rsc
:local testHosts {"1.1.1.1";"8.8.8.8"}
:local retryCount 2
:local wanInterface "ether1"
```

### 📥 Installation

1. Go to **System > Scripts**
2. Create a script named `smart-netcheck`
3. Paste the contents of `smart-netcheck.rsc`
4. Set permissions: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler Setup

```rsc
/system scheduler
add name="smart-netcheck" interval=1m on-event="/system script run smart-netcheck" policy=read,write,test
```

---

## 🇬🇷 Ελληνικά

### 📝 Περιγραφή

Κάνει σύνθετους ελέγχους συνδεσιμότητας και επανεκκινεί τη WAN σε προβλήματα.

### ⚙️ Ρυθμίσεις

Αλλάξτε τις εξής μεταβλητές στο script:

```rsc
:local testHosts {"1.1.1.1";"8.8.8.8"}
:local retryCount 2
:local wanInterface "ether1"
```

### 📥 Εγκατάσταση

1. Πήγαινε στο **System > Scripts**
2. Δημιούργησε νέο script με όνομα `smart-netcheck`
3. Επικόλλησε το περιεχόμενο του `smart-netcheck.rsc`
4. Ρύθμισε δικαιώματα: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler

```rsc
/system scheduler
add name="smart-netcheck" interval=1m on-event="/system script run smart-netcheck" policy=read,write,test
```

---

## 👤 Author / Δημιουργός

**Thanos Pournaras**  
🔗 https://thanosnm.github.io

## ☕ Support My Work / Στήριξέ με

[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/pournarasaa)