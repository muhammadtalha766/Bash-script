#!/bin/bash
echo "Auto deployment"

# Check if the lab6 directory exists
if [ ! -d "/home/talha/lab6/test/" ]; then
    cd /home/talha/lab6/
    echo "Cloning the repository."
    git clone https://github.com/muhammadtalha766/test.git
    cd /home/talha/lab6/test/
else
    echo "Repository already cloned. Pulling the latest changes."
    cd /home/talha/lab6/test/
    git pull origin main  # Replace 'master' with 'main'
fi

# Move files into the default directory
echo "Moving files into the default directory."
sudo cp -r * /var/www/html/

echo "## End ##"

