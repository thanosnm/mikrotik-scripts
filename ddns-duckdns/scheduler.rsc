/system scheduler
add name="duckdns-scheduler" interval=5m on-event="/system script run ddns-duckdns" policy=read,write,test
