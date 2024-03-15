#!/bin/bash

# Install Nginx
sudo apt update
sudo apt install nginx -y

# Enable Nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Allow Nginx Full in UFW
sudo ufw enable
sudo ufw allow 'Nginx Full'

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# Source NVM script
source ~/.bashrc

# Print available Node.js versions using NVM
echo "Available Node.js versions:"
nvm ls-remote

# Ask user for Node.js version to install
read -p "Enter Node.js version from the above list (e.g., 14.17.6): " node_version

# Install Node.js using NVM
nvm install $node_version

echo "Installation completed: Nginx and Node.js ($node_version) are installed and enabled."
