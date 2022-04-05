#!/bin/bash
# upgrade and update
sudo apt upgrade -y
sudo apt update -y
# Install opensss-server and vmware tools
sudo apt install -y openssh-server open-vm-tools open-vm-tools-desktop
# allow ssh firewall rule
sudo ufw allow ssh
# allow password-less sudo
echo "vagrant ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
# Add Vagrant public key to authorized keys
mkdir ~/.ssh
wget https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant.pub --output-document ./.ssh/authorized_keys
# Assign permissions to the public Vagrant key
chmod 0700 ~/.ssh && chmod 0600 ~/.ssh/authorized_keys
# disable reverse dns lookup
sudo sed -i "s/#UseDNS/UseDns/" /etc/ssh/sshd_config
# Restart the SSH service
sudo systemctl restart ssh