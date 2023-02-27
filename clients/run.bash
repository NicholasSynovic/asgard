#!/bin/bash

sudo apt --fix-broken install -y
sudo sudo apt update
sudo apt upgrade -y
sudo apt autoremove --purge -y
sudo apt --fix-broken install -y

ls /bin > defaultSoftware.txt

sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
sudo apt --fix-broken install -y

ansible-galaxy collection install community.general

ansible-playbook -i inventory.ini playbook.yml
