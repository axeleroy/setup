#!/bin/bash

./default.sh
./development.sh

# Remove slow to boot GNOME snaps and install native versions
sudo snap remove gnome-system-monitor
sudo snap remove gnome-calculator
sudo apt install gnome-system-monitor -y
sudo apt install gnome-calculator -y

# Install default GNOME theme and make it default
sudo apt install gnome-session
sudo update-alternatives --config gdm3.css

# Install various GNOME tools
sudo apt install gnome-tweak-tool
sudo apt-get install chrome-gnome-shell

# Get Qt apps to use native GTK+ theme
sudo apt install qt5-style-plugins
echo "export QT_QPA_PLATFORMTHEME=gtk2" >> ~/.profile

# Get info from computer's sensors
sudo apt install lm-sensors
sensors

# Maybe use http://www.bernaerts-nicolas.fr/linux/76-gnome/345-gnome-shell-install-remove-extension-command-line-script
# to install GNOME extensions?
