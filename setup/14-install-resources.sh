#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_steamos) -eq 1 ]]; then exit 0; fi

echo "Installing Resources"
flatpak install -y flathub net.nokyan.Resources
