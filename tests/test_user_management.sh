
#!/bin/bash
# Test user management script

USERNAME="testuser"
./scripts/user_management.sh add $USERNAME
id $USERNAME && echo "User $USERNAME added successfully" || echo "User add failed."

./scripts/user_management.sh remove $USERNAME
id $USERNAME && echo "User $USERNAME removal failed" || echo "User removed successfully."
