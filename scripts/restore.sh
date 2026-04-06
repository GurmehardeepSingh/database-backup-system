#!/bin/bash
mysql -u root -p company_dba < $1

echo "Restore completed"
