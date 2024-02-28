#!/bin/bash -i

# Preventing sudo timeout https://serverfault.com/a/833888
trap "exit" INT TERM; trap "kill 0" EXIT; sudo -v || exit $?; sleep 1; while true; do sleep 60; sudo -nv; done 2>/dev/null &

### Update packages
sudo apt update
sudo apt -y upgrade

### Install packages
sudo apt -y install net-tools ufw apache2 fail2ban unzip
sudo apt -y install software-properties-common snapd
sudo apt -y install python3 python3-launchpadlib
sudo apt -y install neofetch
sudo apt -y install git
sudo apt -y install mariadb-server
sudo apt -y install neovim python3-neovim

### Install certbot
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot

### Customize .bashrc
echo "neofetch" >> ~/.bashrc
echo "alias ll='ls -lahF --group-directories-first'" >> ~/.bashrc
source ~/.bashrc
