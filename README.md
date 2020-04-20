# backupCreator
an easy backup-creator-script for Linux (= Debian x)

# setUp

<b>-> in order to configure your own configuration, you can edit backupCreator.sh</b>

1st) create dir .backupService under "/"<br>
2nd) copy backupCreator.sh to /.backupService/<br>
3rd) create a crontab ("crontab -e") and paste in the following: "30 3 * * * /.backupService/createBackup.sh > /dev/null 2>&1" -> creates a backup every night at 3:30 am<br>
4th) backups can be found under /.backupService/Backups/<br>
