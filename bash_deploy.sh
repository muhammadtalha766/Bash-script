#!/bin/bash
echo "Auto deployment"
if [ ! -d "/home/talha/lab6/" ]; then
    cd /home/talha/lab6/    
else
    echo "Repository already cloned. Pulling the latest changes."
    cd /home/talha/lab6/
    git pull origin master
fi
echo "Cloning the repository."
git clone https://github.com/muhammadtalha766/test.git
cd lab6/
echo "Moving file into default directory."
sudo cp * /var/www/html/
echo "## End ##"
