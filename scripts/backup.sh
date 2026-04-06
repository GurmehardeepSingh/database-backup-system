#!/bin/bash

# Database backup automation script
# Purpose: Backup MySQL DB with logging and retention

DB_NAME="company_dba"
USER="root"

DATE=$(date +%F_%H-%M-%S)

BACKUP_DIR="../backups"
LOG_DIR="../logs"
LOG_FILE="../logs/backup.log"

# Create folders if missing
mkdir -p $BACKUP_DIR
mkdir -p $LOG_DIR

echo "Backup started at $(date)" >> $LOG_FILE

mysqldump -u $USER -p $DB_NAME > $BACKUP_DIR/backup_$DATE.sql

if [ $? -eq 0 ]
then
    echo "Backup SUCCESS at $(date)" >> $LOG_FILE
else
    echo "Backup FAILED at $(date)" >> $LOG_FILE
fi

# Delete backups older than 7 days
find $BACKUP_DIR -type f -mtime +7 -delete

echo "Old backups cleaned at $(date)" >> $LOG_FILE

echo "Backup finished"
