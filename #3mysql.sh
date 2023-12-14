#!/bin/bash

# Install MySQL Server
sudo apt update
sudo apt install -y mysql-server

# Secure MySQL installation
sudo mysql_secure_installation 

# Enter "y" for password.
# Enter "0" (zero) for security.
# Enter new password: SNHU
# Enter "y" for the rest of the setup

# Enter into the MySQL command prompt
sudo mysql

# Create a WordPress user for the database on localhost
mysql> CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'SNHU_2020';
mysql> GRANT ALL PRIVILEGES ON *.* TO 'wordpress'@'localhost' WITH GRANT OPTION;

# Create the database for WordPress
mysql> CREATE DATABASE wordpressdb;

# Expected result: "Query OK."

# Exit the MySQL console
mysql> exit

# Restart Apache to apply changes
sudo service apache2 restart

echo "MySQL installation and setup completed."
