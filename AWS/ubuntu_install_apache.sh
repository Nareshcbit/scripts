#!/bin/bash

sudo apt update
sudo apt install apache2 -y
sudo ufw app list
sudo ufw allow 'Apache'
sudo systemctl restart apache2