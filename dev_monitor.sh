#!/bin/bash
LOG_DIR="/var/log/dev_monitor"
mkdir -p $LOG_DIR
DATE=$(date +%F_%H-%M-%S)
LOG_FILE="$LOG_DIR/monitor_$DATE.log"

echo "===== System Monitoring Log: $DATE =====" >> $LOG_FILE
echo "CPU, Memory, and Process Usage (htop snapshot):" >> $LOG_FILE
top -b -n1 | head -20 >> $LOG_FILE

echo -e "\nDisk Usage Summary (df):" >> $LOG_FILE
df -h >> $LOG_FILE

echo -e "\nDirectory Size Breakdown (/home):" >> $LOG_FILE
du -sh /home/* >> $LOG_FILE

echo -e "\nTop 5 Memory-consuming Processes:" >> $LOG_FILE
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -6 >> $LOG_FILE
