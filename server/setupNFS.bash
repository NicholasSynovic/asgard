#!/bin/bash

# Tutorials followed:
# https://phoenixnap.com/kb/ubuntu-nfs-server

# folderPath="/mnt/asgard"

# sudo apt remove nfs-kernel-server --purge -y

# sudo apt update
# sudo apt upgrade -y
# sudo apt autoremove --purge -y

# sudo apt install nfs-kernel-server -y

# Setup shared folder
sudo rm -r /mnt/asgard
sudo mkdir /mnt/asgard
sudo chown nobody:nogroup /mnt/asgard
sudo chmod 777 /mnt/asgard

# Expose shared folder to the subnet
sudo cp /etc/exports /etc/exports.backupd
echo "/mnt/asgard 192.168.102.0/24(rw,sync,no_subtree_check)" | sudo tee /etc/exports

sudo systemctl restart nfs-kernel-server
sudo systemctl status nfs-kernel-server

sudo exportfs -a
