#!/bin/bash

# Update the package list
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

# Remove unnecessary packages
sudo apt autoremove -y

# Clean up cached package files
sudo apt clean

# Print a message indicating the script has completed
echo "Patch management completed."
