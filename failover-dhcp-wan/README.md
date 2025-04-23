# 🌐 MikroTik DHCP Failover Script

🇬🇷 *Για Ελληνικά δείτε παρακάτω | English above*

---

## ⚙️ Overview

This MikroTik script automatically switches internet connection from primary (ether1) to backup (ether2) interface when the primary goes offline.

---

## 🔧 Configuration

Edit the following lines at the top of the script:

```rsc
:local testIP1 "1.1.1.1"
:local testIP2 "9.9.9.9"
:local pingCount 3
:local emailTo "you@example.com"
:local emailSubject "FAILOVER Triggered"
:local emailBody "ether1 down, switching to backup"
```

---

## ⏱ Scheduler Setup

```rsc
/system scheduler
add name="Failover Check" interval=1m on-event="/system script run failover-script" policy=read,write,test
```

---

## 👤 Author

**Thanos Pournaras**  
🔗 https://thanosnm.github.io

---

## ☕ Support My Work

[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/pournarasaa)

---

# 🌐 Script Αυτόματης Εναλλαγής Internet (DHCP WAN)

🇬🇷 Αυτό το script ελέγχει τη σύνδεση στο διαδίκτυο μέσω ether1 και αν δεν υπάρχει απάντηση από τις IP ελέγχου, μεταφέρει την πύλη στο ether2.

---

## 🔧 Ρυθμίσεις

Μπορείς να αλλάξεις τα εξής στο πάνω μέρος του script:

```rsc
:local testIP1 "1.1.1.1"
:local testIP2 "9.9.9.9"
:local pingCount 3
:local emailTo "you@example.com"
:local emailSubject "FAILOVER Triggered"
:local emailBody "ether1 down, switching to backup"
```

---

## ⏱ Scheduler

Για να εκτελείται κάθε 1 λεπτό:

```rsc
/system scheduler
add name="Failover Check" interval=1m on-event="/system script run failover-script" policy=read,write,test
```

---

## 👤 Δημιουργός

**Θάνος Πουρνάρας**  
🔗 https://thanosnm.github.io

---

## ☕ Στήριξέ με

Αν σου άρεσε η δουλειά μου:

[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/pournarasaa)