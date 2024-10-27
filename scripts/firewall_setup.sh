
#!/bin/bash
# Script to configure firewall based on config file

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
echo "Basic firewall rules applied."
