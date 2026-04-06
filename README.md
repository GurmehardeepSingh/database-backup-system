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

## Backup
Run:
./scripts/backup.sh

## Restore
Run:
./scripts/restore.sh backup_file.sql

## DBA Concepts Demonstrated
- Index optimization
- Query performance analysis
- Backup & recovery
- Monitoring database health
