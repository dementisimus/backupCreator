# backupCreator
an easy backup-creator-script for Linux (= Debian x)

# setUp

<b>-> in order to configure your own configuration, you can edit backupCreator.sh</b>

1st) <b>create</b> directory "<b>.backupService</b>" under "<b>/</b>"<br>
2nd) <b>copy</b> backupCreator.sh to "<b>/.backupService/</b>"<br>
3rd) create a crontab ("<b>crontab -e</b>") and paste in the following: "<b>30 3 * * * /.backupService/createBackup.sh >> /.backupService/logs/logs.log 2>&1</b>" -> creates a backup every night at <b>3:30 am</b><br>
4th) backups can be found under "<b>/.backupService/Backups/</b>" and logs can be found under "<b>/.backupService/logs/logs.log</b>"<br>
