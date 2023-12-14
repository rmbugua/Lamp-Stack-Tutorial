#!/bin/bash

# Install PHP and Apache PHP module
sudo apt-get update
sudo apt-get install -y php libapache2-mod-php php-mysql

# Verify PHP version
php_version=$(php -v | grep -Eo 'PHP ([0-9]+\.[0-9]+)')
echo "Installed PHP version: $php_version"

# Install additional PHP extensions
sudo apt-get install -y php-pear php-curl php-dev php-gd php-mbstring php-zip php-xml php-xmlrpc php-soap

# Print a message indicating the script has completed
echo "PHP installation and extension setup completed."
