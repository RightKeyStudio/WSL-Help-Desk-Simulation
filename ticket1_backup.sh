#!/bin/bash

# Ticket 1: Backup Failure
# Simulate backup failure and analyze logs

echo "Simulating a backup failure log entry..."
echo "$(date '+%Y-%m-%d %H:%M:%S') BACKUP FAILURE: rsync error on /home/user1" | sudo tee -a /var/log/syslog

echo "Searching logs for backup failures..."
grep BACKUP /var/log/syslog

echo "Writing summary report..."
echo "Backup failure analyzed on $(date)" > backup_report.txt
grep BACKUP /var/log/syslog >> backup_report.txt

echo "Done! Report saved to backup_report.txt"
read -p "Press Enter to exit"

