#!/bin/bash

./default.sh
./development.sh

# Until Linux 5.4 / Ubuntu 20.04 support for exFAT, that's the only way to mount a camera's memory card!
sudo apt install exfat-utils exfat-fuse -y

# Remove slow to boot GNOME snaps and install native versions
sudo snap remove gnome-system-monitor
sudo snap remove gnome-calculator
sudo apt install gnome-system-monitor -y
sudo apt install gnome-calculator -y

# Install default GNOME theme and make it default
sudo apt install gnome-session -y
sudo update-alternatives --config gdm3.css

# Install various GNOME tools
sudo apt install gnome-tweak-tool -y
sudo apt install chrome-gnome-shell -y

# Get Qt apps to use native GTK+ theme
sudo apt install qt5-style-plugins
echo "export QT_QPA_PLATFORMTHEME=gtk2" >> ~/.profile

# Get info from computer's sensors
sudo apt install lm-sensors -y
sensors

# Always useful to edit .desktops
sudo apt install menulibre -y

# Install fav apps
sudo snap install spotify
sudo apt install vlc -y

# Install GNOME Shell extensions
while IFS= read -r line
do
    python3 ../shell-extensions-management/extension-management.py install "$line"
done < gnome-extensions-list.txt