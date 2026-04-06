# Database Performance Monitoring & Backup Automation System

## Overview
This project demonstrates basic Database Administration tasks including database design, performance optimization, monitoring, and automated backup & recovery.

## Features
- Relational database schema design
- Query performance optimization using indexes
- Database monitoring queries
- Automated backup using shell script
- Database recovery script

## Technologies
- MySQL
- SQL
- Linux Shell Scripting
- Database Administration Concepts

## Database Design
Tables:
- employees
- departments
- performance_log

## Performance Optimization
Index created on:
employees(dept_id)
It was noticed that before indexing it scanned all 1000 rows for select * from employees where dept_id=1;
with indexing it scanned only around 300 rows.

## Backup
Run:
./scripts/backup.sh

## Restore
Run:
./scripts/restore.sh backup_file.sql
## Backup Automation

Automated backup implemented using shell script.

Cron example:

0 2 * * * scripts/backup.sh

Backup retention policy:
Backups older than 7 days automatically removed.

## DBA Concepts Demonstrated
- Index optimization
- Query performance analysis
- Backup & recovery
- Monitoring database health
