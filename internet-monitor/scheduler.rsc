/system scheduler
add name="internetCheck" interval=15s on-event="/system script run internet-monitor" policy=read,write,test
