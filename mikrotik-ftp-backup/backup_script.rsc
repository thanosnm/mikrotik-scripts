# User-defined Variables
:local userID "site42"
:local ftpAddress "1.2.3.4"
:local ftpUser "ftp_username"
:local ftpPass "ftp_password"

# Get system identity
:local identity [/system identity get name]

# Format date and time
:local date [/system clock get date]
:local time [/system clock get time]

:set date [:pick $date 0 10]
:set time [:pick $time 0 5]
:set time [:find $time ":" -1]
:set time ([:pick $time 0 $time] . "-" . [:pick $time ($time + 1) 5])

# Compose backup filename
:local filename ($userID . "_" . $identity . "_" . $date . "_" . $time . ".backup")

# Create system backup
/system backup save name=$filename

# Upload backup to FTP server
/tool fetch address=$ftpAddress src-path=$filename user=$ftpUser password=$ftpPass upload=yes dst-path=$filename mode=ftp

# Remove local backup file
/file remove $filename
