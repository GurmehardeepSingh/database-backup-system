#!/bin/bash

# Database restore script
# Usage: ./restore.sh backupfile.sql

DB_NAME="company_dba"
USER="root"
LOG_FILE="../logs/restore.log"

echo "Restore started at $(date)" >> $LOG_FILE

mysql -u $USER -p $DB_NAME < $1

if [ $? -eq 0 ]
then
    echo "Restore SUCCESS at $(date)" >> $LOG_FILE
else
    echo "Restore FAILED at $(date)" >> $LOG_FILE
fi

echo "Restore completed"
