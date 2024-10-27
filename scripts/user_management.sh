
#!/bin/bash
# Usage: ./user_management.sh add|remove username

ACTION=$1
USERNAME=$2

if [ "$ACTION" == "add" ]; then
    sudo useradd -m "$USERNAME"
    echo "User $USERNAME added."
elif [ "$ACTION" == "remove" ]; then
    sudo userdel -r "$USERNAME"
    echo "User $USERNAME removed."
else
    echo "Usage: $0 add|remove username"
fi
