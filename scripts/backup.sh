#!/bin/bash

DATE=$(date +%F)
LOGFILE="../logs/backup.log"

echo "Backup started at $(date)" >> $LOGFILE

mysqldump -u root -p company_dba > ../backups/backup_$DATE.sql

if [$? -eq 0]
then
	echo "Backup successful at %(date)" >> $LOGFILE
else
	 echo "Backup failed at %(date)" >> $LOGFILE
fi

echo "Backup end"
