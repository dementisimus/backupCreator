#!/bin/bash

# default-configuration: loc_x can be changed to you directories / files
loc_1="/etc/letsencrypt/"
loc_2="/etc/nginx/"
loc_3="/var/www/"
loc_4="/var/lib/mysql/"

buDest="/.backupService/Backups/"
loDest="/.backupService/logs/"

timestamp=$(date -d "today" +"%d.%m.%Y-%H,%M,%S")
archive_file="$timestamp.zip"

cd $buDest

tar cvzf $buDest/$archive_file $loc_1 $loc_2 $loc_3 $loc_4

cd $buDest

# "3" can be changed to the amount of backups you want to keep as a maximum
find $buDest -mtime +3 -type f -delete

cd $loDest

# removes backup logs and re-creates the file
rm "/.backupService/logs/logs.log"
touch "/.backupService/logs/logs.log"

# executes automatic updates
apt-get update -y && apt-get upgrade -y
# shutdowns the system for a reboot
systemctl reboot
