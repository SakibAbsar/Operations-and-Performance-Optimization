
#!/bin/bash
# Basic server setup script

echo "Updating and upgrading system packages..."
sudo apt update && sudo apt upgrade -y

echo "Installing essential packages..."
sudo apt install -y curl wget vim htop

echo "Configuring firewall..."
sudo ufw allow 22/tcp
sudo ufw enable
echo "Firewall rules updated."
