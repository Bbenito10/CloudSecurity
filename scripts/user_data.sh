#!/bin/bash
# Update and install necessary packages
sudo apt-get update -y
sudo apt-get install -y apache2
# Start Apache
sudo systemctl start apache2
sudo systemctl enable apache2
