# backupCreator
an easy backup-creator-script for Linux (= Debian x)

# setUp

1st) create dir .backupService under "/"<br>
2nd) copy backupCreator.sh to /.backupService/
3rd) create a crontab ("crontab -e") and paste in the following: "30 3 * * * /.backupService/createBackup.sh > /dev/null 2>&1" -> creates a backup every night at 3:30 am
4th) backups can be found under /.backupService/Backups/
