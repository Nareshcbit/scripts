#!/bin/bash

#Install java8
sudo add-apt-repository ppa:webupd8team/java
sudo apt install openjdk-8-jre -y

#install java
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins -y

sudo systemctl start jenkins
sudo ufw allow 8080
sudo ufw allow OpenSSH
