#!/bin/bash

# to ping managed-host using yaml file
ansible nodes -m ping -i inventory.yml

# to ping selected only
ansible vps -m ping -i inventory.yml

# to ping managed-host using hosts file
ansible localvm -m ping -i hosts

# to run playbook.yml
ansible-playbook -i inventory.yml playbook.yml 

# create self-signed key and certificate
sudo openssl req -x509 -nodes -days 365 \
 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key \
 -out /etc/ssl/certs/nginx-selfsigned.crt

 # to run nginx-tls.yml
ansible-playbook -i inventory.yml nginx-tls.yml