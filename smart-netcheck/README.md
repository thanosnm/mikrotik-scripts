# Smart Internet Recovery

🇬🇷 *English below*

## 🔁 Έξυπνη Ανίχνευση & Ανάκτηση Σύνδεσης Internet

Ελέγχει πολλαπλά DNS (8.8.8.8, 1.1.1.1, 9.9.9.9).  
Αν αποτύχουν 2 ή περισσότεροι → γίνεται αυτόματη επανεκκίνηση του `pppoe-out1`.  
Καταγράφει log, στέλνει email και κρατάει αρχείο ιστορικού.

### ✅ Οδηγίες

1. Επικόλληση `script.txt` σε System > Scripts
2. Δημιούργησε scheduler:

```shell
/system scheduler
add name="smart-netcheck" interval=2m on-event="/system script run smart-netcheck" policy=read,write,test
```

---

## 🔁 Smart Internet Outage Detection & Recovery

Pings 3 IPs (8.8.8.8, 1.1.1.1, 9.9.9.9).  
If 2 or more fail → restarts `pppoe-out1`, sends alert and logs recovery event to file.

### ✅ Instructions

1. Paste `script.txt` into System > Scripts
2. Add scheduler:

```shell
/system scheduler
add name="smart-netcheck" interval=2m on-event="/system script run smart-netcheck" policy=read,write,test
```

---

## 📁 Recovery Log

Events are saved in: **Files > netcheck-recovery.txt**

---

## ☕ Σου έλυσε τα χέρια;

🇬🇷 Αν σου έσωσε χρόνο και reboot… ΚΕΡΝΑ έναν καφέ 😉  
🇬🇧 If this saved you a manual reboot… consider buying me a coffee!

[![Buy Me A Coffee](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff)](https://buymeacoffee.com/pournarasaa)


---

## 👤 Author

**Thanos Pournaras**  
🔗 [thanosnm.github.io](https://thanosnm.github.io)  
📧 pournarasat@gmail.com  
📦 [github.com/thanosnm](https://github.com/thanosnm)
