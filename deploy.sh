#!/bin/bash

echo "## Welcome to deployment ##"
if dpkg -l | grep -qw nginx; then
     echo "Nginx is already installed"
else
     echo "Nginx is not installed.Installing nginx..."
     sudo apt install nginx -y
     systemctl start nginx
fi
systemctl status nginx --no-pager

if [ ! -d "/home/talha/iac_web/iac/" ]; then
    cd /home/talha/iac_web/
    echo "Cloning the repository..."
    git clone https://github.com/maham0612/maham_iac.git
    cd talha_iac/
else
    echo "Repository already cloned. Pulling the latest changes..."
    cd /home/talha/iac_web/maham_iac/
    git pull origin master
fi
echo "Moving file into default directory..."
sudo cp * /var/www/html/
echo "## End ##"
