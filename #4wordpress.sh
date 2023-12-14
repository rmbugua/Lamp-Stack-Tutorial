#!/bin/bash

# Change into the web directory
cd /var/www/html

# Retrieve the latest build of WordPress
wget http://wordpress.org/latest.tar.gz

# Unpack the tar file
tar -xzvf latest.tar.gz

# View the contents of the html folder
ls

# Set ownership and permissions for WordPress directory
sudo chown -R www-data:www-data /var/www/html/wordpress
sudo find /var/www/html/wordpress/ -type d -exec chmod 750 {} \;
sudo find /var/www/html/wordpress/ -type f -exec chmod 640 {} \;

echo "WordPress installation completed."
