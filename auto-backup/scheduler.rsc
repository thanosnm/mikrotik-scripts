/system scheduler
add name="autoBackup" interval=1d start-time=03:00 on-event="/system script run auto-backup" policy=read,write
