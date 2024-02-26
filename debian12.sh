#!/bin/sh

### Check if run as root
if [ "$(id -u)" -ne 0 ]; then
        echo 'This script must be run by root' >&2
        exit 1
fi

### Update packages
apt update
apt -y upgrade

### Install packages
apt -y install net-tools ufw apache fail2ban
apt -y install software-properties-common snapd
apt -y install python3 python3-launchpadlib
apt -y install neofetch

### Install certbot
snap install --classic certbot
ln -s /snap/bin/certbot /usr/bin/certbot

### Customize .bashrc
echo "neofetch" >> ~/.bashrc
echo "alias ll='ls -lahF --group-directories-first'" >> ~/.bashrc

echo "To update changes, run 'source ~/.bashrc'"
