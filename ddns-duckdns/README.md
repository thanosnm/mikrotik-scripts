# 📦 DDNS Update (DuckDNS)

## 🇬🇧 English

### 📝 Description

Updates your dynamic IP on DuckDNS using a custom script. Requires DuckDNS token and subdomain.

### ⚙️ Configuration

Edit these variables inside the script:

```rsc
:global ddnsuser "your-subdomain"
:global ddnspass "your-duckdns-token"
:global ddnshost "your-subdomain.duckdns.org"
```

### 📥 Installation

1. Go to **System > Scripts**
2. Create a script named `ddns-duckdns`
3. Paste the contents of `ddns-duckdns.rsc`
4. Set permissions: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler Setup

```rsc
/system scheduler
add name="ddns-duckdns" interval=5m on-event="/system script run ddns-duckdns" policy=read,write,test
```

---

## 🇬🇷 Ελληνικά

### 📝 Περιγραφή

Ενημερώνει τη δυναμική IP σας στο DuckDNS με script. Απαιτεί token και subdomain.

### ⚙️ Ρυθμίσεις

Αλλάξτε τις εξής μεταβλητές στο script:

```rsc
:global ddnsuser "your-subdomain"
:global ddnspass "your-duckdns-token"
:global ddnshost "your-subdomain.duckdns.org"
```

### 📥 Εγκατάσταση

1. Πήγαινε στο **System > Scripts**
2. Δημιούργησε νέο script με όνομα `ddns-duckdns`
3. Επικόλλησε το περιεχόμενο του `ddns-duckdns.rsc`
4. Ρύθμισε δικαιώματα: `read`, `write`, `policy`, `test`

### ⏱️ Scheduler

```rsc
/system scheduler
add name="ddns-duckdns" interval=5m on-event="/system script run ddns-duckdns" policy=read,write,test
```

---

## 👤 Author / Δημιουργός

**Thanos Pournaras**  
🔗 https://thanosnm.github.io

## ☕ Support My Work / Στήριξέ με

[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/pournarasaa)