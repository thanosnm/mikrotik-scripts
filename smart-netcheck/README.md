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

## 👤 Author

**Thanos Pournaras**  
🔗 https://thanosnm.github.io
