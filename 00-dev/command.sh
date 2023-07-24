#!/bin/bash

# to ping managed-host using yaml file
ansible nodes -m ping -i inventory.yml

# to ping selected only
ansible vps -m ping -i inventory.yml

# to ping managed-host using hosts file
ansible localvm -m ping -i hosts

# to run playbook.yml
ansible-playbook -i inventory.yml playbook.yml 