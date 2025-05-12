#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

echo "Installing LibreOffice"
flatpak install -y flathub org.libreoffice.LibreOffice
