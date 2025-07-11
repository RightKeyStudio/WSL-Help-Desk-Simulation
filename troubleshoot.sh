#!/bin/bash
echo "==== Disk Usage ===="
df -h

echo ""
echo "==== Memory Usage ===="
free -m

echo ""
echo "==== Recent Log Errors ===="
grep -i "error\|fail\|denied" /var/log/syslog | tail -n 10
