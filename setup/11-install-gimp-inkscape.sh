#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_steamos) -eq 1 ]]; then exit 0; fi

echo "Installing GIMP"
flatpak install -y flathub org.gimp.GIMP
echo "Installing Inkscape"
flatpak install -y flathub org.inkscape.Inkscape
