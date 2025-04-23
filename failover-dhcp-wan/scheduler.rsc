/system scheduler
add name="Failover Check" interval=1m on-event="/system script run failover-script" policy=read,write,test