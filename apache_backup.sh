#!/bin/bash

DATE=$(date +%F)
BACKUP_DIR="/backups"
BACKUP_FILE="$BACKUP_DIR/apache_backup_$DATE.tar.gz"
VERIFY_LOG="$BACKUP_DIR/apache_backup_verify_$DATE.log"

sudo mkdir -p $BACKUP_DIR
sudo tar -czf $BACKUP_FILE /etc/apache2 /var/www/html
echo "Apache Backup Verification - $DATE" | sudo tee $VERIFY_LOG
sudo tar -tvf $BACKUP_FILE | sudo tee -a $VERIFY_LOG

