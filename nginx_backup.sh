#!/bin/bash
DATE=$(date +%F)
BACKUP_DIR="/backups"
FILENAME="nginx_backup_$DATE.tar.gz"
SRC1="/etc/nginx"
SRC2="/usr/share/nginx/html"

mkdir -p $BACKUP_DIR
sudo tar -czf $BACKUP_DIR/$FILENAME $SRC1 $SRC2

# Verification
echo "Verifying Nginx backup..." > $BACKUP_DIR/nginx_verify_$DATE.log
sudo tar -tvf $BACKUP_DIR/$FILENAME >> $BACKUP_DIR/nginx_verify_$DATE.log

