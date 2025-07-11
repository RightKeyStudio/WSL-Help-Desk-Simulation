#!/bin/bash

# Ticket 2: Permission Denied on Script
# Check script permissions and fix them

SCRIPT="script.sh"

echo "Checking current permissions for $SCRIPT..."
ls -l $SCRIPT

echo "Changing permissions to make $SCRIPT executable by the owner..."
chmod u+x $SCRIPT

echo "Updated permissions:"
ls -l $SCRIPT

echo "Ownership info:"
ls -l $SCRIPT | awk '{print "Owner: "$3", Group: "$4}'

echo "Done fixing permissions."
read -p "Press Enter to exit"

