bash
Copy
Edit
#!/bin/bash

# Ticket 4: User Can't Log In
# Check user account info and reset password if needed

USERNAME="user1"

echo "Checking account info for $USERNAME..."
cat /etc/passwd | grep "^$USERNAME:"

echo "Resetting password for $USERNAME..."
sudo passwd $USERNAME

echo "Adding $USERNAME to sudo group (if needed)..."
sudo usermod -aG sudo $USERNAME

echo "Done with user account fix."
read -p "Press Enter to exit"

