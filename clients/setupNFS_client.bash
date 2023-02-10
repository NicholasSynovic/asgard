#!/bin/bash

# Tutorials followed
# https://phoenixnap.com/kb/ubuntu-nfs-server

serverIP=$1
serverFolderPath="/mnt/asgard"
clientFolderPath="/mnt/asgard_client"

# Connect to NFS server at mount point
# sudo mount $serverIP:$serverFolderPath $clientFolderPath
sudo tee -a "${serverIP}:${serverFolderPath}	${clientFolderPath}	nfs	auto	0 0" /etc/fstab
sudo mount -a
