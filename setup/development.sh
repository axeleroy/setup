#!/bin/bash

sudo apt install build-essential -y
sudo snap install aws-cli --classic
sudo snap install ubuntu-make --classic
umake nodejs
sudo snap install intellij-idea-ultimate --classic
sudo snap install pycharm-community --classic
sudo apt install openjdk-8-jdk -y
sudo apt install python3-pip -y
sudo apt install webp -y

# idea alias to quickly use IntelliJ as an advanced text editor
echo "alias idea='intellij-idea-ultimate &> /dev/null'" >> ~/.bashrc

git config --global user.email "axeleroy@users.noreply.github.com"
git config --global user.name "Axel Leroy"
git config --global core.editor "vi"
git config --global pull.rebase true

# Notification on command completion
sudo apt install undistract-me -y
echo 'source /etc/profile.d/undistract-me.sh' >> ~/.bashrc
