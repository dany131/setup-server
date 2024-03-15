#!/bin/bash

echo "Installing Nginx..."
# Install Nginx
sudo apt update
sudo apt install nginx -y

echo "Enabling Nginx..."
# Enable Nginx
sudo systemctl enable nginx
sudo systemctl start nginx

echo "Allowing Nginx Full and OpenSSH in UFW..."
# Allow Nginx Full and OpenSSH in UFW
sudo ufw allow 'Nginx Full'
sudo ufw allow 'OpenSSH'

echo "Enabling UFW..."
# Enable UFW
sudo ufw enable

echo "Installing NVM (Node Version Manager)..."
# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

echo "Sourcing NVM script..."
# Source NVM script
source ~/.bashrc

echo "Installation completed: Nginx, OpenSSH, and NVM are installed and enabled."
