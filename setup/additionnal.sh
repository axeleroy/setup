#!/bin/bash

sudo snap install inkscape
sudo snap install matroska-tools
sudo apt install filezilla -y
sudo apt install steam -y

# Arrh
sudo apt install transmission -y
sudo apt install minidlna -y

sudo apt install openssh-server -y
echo "PasswordAuthentication no" | sudo tee -a /etc/ssh/sshd_config