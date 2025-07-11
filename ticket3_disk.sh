#!/bin/bash

# Ticket 3: Disk Full Analysis
# Check disk usage and locate large files

echo "Checking disk usage:"
df -h

echo "Finding large files/directories in root (/):"
sudo du -sh /* | sort -hr | head -n 10

echo "Searching /var/log for large log files:"
sudo find /var/log -type f -name "*.log" -exec du -h {} + | sort -hr | head -n 10

echo "Cleaning apt cache..."
sudo apt clean

echo "Rechecking disk usage after cleanup:"
df -h

echo "Done with disk cleanup analysis."
read -p "Press Enter to exit"

