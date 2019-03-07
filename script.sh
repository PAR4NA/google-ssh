#!/bin/sh
sudo su root
sed -i 's/^Port .*/Port 22/g' /etc/ssh/sshd_config
sed -i 's/^PermitRootLogin .*/PermitRootLogin yes/g' /etc/ssh/sshd_config
sed -i 's/^PasswordAuthentication .*/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sed -i 's/^#PasswordAuthentication .*/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo apt-get remove google-cloud-sdk
/etc/init.d/ssh restart
sudo service ssh restart
sudo restart ssh
