# MikroTik Speedtest Logger

🇬🇧 *English below*

## 📶 Παρακολούθηση Ταχύτητας Σύνδεσης

Αυτό το script εκτελεί speed-test σε MikroTik server και σε ειδοποιεί μόνο όταν η ταχύτητα πέσει κάτω από ένα όριο.

### ✅ Τι παρακολουθεί:
- Ping (ms)
- Download (Mbps)
- Upload (Mbps)

### ⚠️ Στέλνει email ΜΟΝΟ όταν:
- Το download είναι κάτω από 30 Mbps
- Ή το upload κάτω από 5 Mbps
- Ή το ping πάνω από 100ms

---

## 📶 Speedtest Logger for MikroTik

This script runs a speed-test against `speedtest.mikrotik.com` and only alerts you if the results are below thresholds.

### ✅ It checks:
- Ping (ms)
- Download (Mbps)
- Upload (Mbps)

### ⚠️ Email is sent ONLY if:
- Download is below 30 Mbps
- Or upload below 5 Mbps
- Or ping over 100ms

---

## ⚙️ Setup

1. Paste the contents of `script.txt` into a MikroTik script named `speedtest-logger`
2. Update your email address
3. Add scheduler using `scheduler.rsc` or manually:

```shell
/system scheduler
add name="speedtest-logger" interval=6h on-event="/system script run speedtest-logger" policy=read,write,test
```

## 👤 Author

**Thanos Pournaras**  
🔗 https://thanosnm.github.io
