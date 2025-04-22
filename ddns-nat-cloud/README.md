# DynDNS (NAT + Cloud IP)

🇬🇧 *English below*

## ☁️ Ενημέρωση DynDNS μέσω MikroTik IP Cloud

Αυτό το script ενημερώνει το DynDNS hostname χρησιμοποιώντας τη δημόσια IP που λαμβάνεται από το built-in MikroTik IP Cloud. Χρήσιμο όταν ο router βρίσκεται πίσω από NAT/modem.

### ✅ Οδηγίες

1. Πήγαινε στο **System > Scripts** και δημιούργησε νέο script με όνομα `ddns-nat-cloud`
2. Επικόλλησε το περιεχόμενο από το `script.txt`
3. Δώσε permissions: `read`, `write`, `test`
4. Πρόσθεσε scheduler από `scheduler.rsc` ή χειροκίνητα με:

```shell
/system scheduler
add name="DynDNS-NAT" interval=5m on-event="/system script run ddns-nat-cloud" policy=read,write,test
```





---

<div align="center" style="max-width: 700px; margin: 2em auto; padding: 1em; background: #333; color: #f1f1f1; border-radius: 10px; text-align: center;">
  <p style="font-size: 1.1em; font-weight: bold;">
    ✅ Δούλεψε το script; Σου έλυσε τα χέρια;
  </p>
  <p style="margin: 0.5em 0;">Τότε... 🤝 <strong>χρωστάς έναν καφέ!</strong></p>

  <p style="font-size: 1.1em; font-weight: bold; margin-top: 1em;">
    ✅ Did this script help you out?
  </p>
  <p style="margin: 0.5em 0;">Then... 🤝 <strong>you owe me a coffee!</strong></p>

  <a href="https://buymeacoffee.com/pournarasaa" target="_blank" style="display: inline-block; margin-top: 10px;">
    <img src="https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=☕&slug=pournarasaa&button_colour=FFDD00&font_colour=000000&font_family=Arial&outline_colour=000000&coffee_colour=ffffff" alt="Buy Me A Coffee" style="height: 42px;">
  </a>
</div>
