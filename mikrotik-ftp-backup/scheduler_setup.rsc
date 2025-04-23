/system scheduler
add name="weekly_ftp_backup" interval=7d start-time=02:00:00 on-event="/system script run ftp_backup_script"
