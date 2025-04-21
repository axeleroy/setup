#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

echo "Installing Document Scanner"
flatpak install -y flathub org.gnome.SimpleScan

# GNOME Tweaks is still on Bazzite, thus skip installing Refine
if [[ $(is_hostname axel-Desktop) -eq 1 ]]; then exit 0; fi
echo "Installing Refine"
flatpak install -y flathub page.tesk.Refine
