#!/bin/sh

### Check if run as root
#if [ "$(id -u)" -ne 0 ]; then
#        echo 'This script must be run by root' >&2
#        exit 1
#fi

### Update packages
sudo apt update
sudo apt -y upgrade

### Install packages
sudo apt -y install net-tools ufw apache2 fail2ban
sudo apt -y install software-properties-common snapd
sudo apt -y install python3 python3-launchpadlib
sudo apt -y install neofetch

### Install certbot
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot

### Customize .bashrc
echo "neofetch" >> ~/.bashrc
echo "alias ll='ls -lahF --group-directories-first'" >> ~/.bashrc
source ~/.bashrc
