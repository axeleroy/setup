#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

echo "Installing Document Scanner"
flatpak install -y flathub org.gnome.SimpleScan

echo "Installing Refine"
flatpak install -y flathub page.tesk.Refine
