#!/bin/bash

sudo sudo apt update
sudo apt upgrade -y
sudo apt autoremove --purge -y

ls /bin > defaultSoftware_${date +%s}.txt

sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

ansible-galaxy collection install community.general

ansible-playbook -i inventory.ini playbook.yaml
