#!/bin/bash

echo "##########################################################"
echo "#"
echo "# Downloading sshd config....
echo "#
echo "# vvvvvvvvvvvvvvvvvvvvvvvvvvvv"
wget https://raw.githubusercontent.com/hinnerhaus/linux/main/debian12/sshd_config
echo "Port ~ENTER_PORT_NUMBER_HERE~" >> ./sshd_config
sudo mv ./sshd_config /etc/ssh/sshd_config
sudo chown root:root /etc/ssh/sshd_config
rm sshd_config
sudo service sshd restart
