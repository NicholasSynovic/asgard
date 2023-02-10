#!/bin/bash

sudo sudo apt update
sudo apt upgrade -y
sudo apt autoremove --purge -y

ls /bin > defaultSoftware.txt

sudo apt install software-properties-common -y
 add-sudo apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

ansible-galaxy collection install community.general

sudo ansible-playbook -i inventory.ini playbook.yaml

./setupNFS_client.bash
