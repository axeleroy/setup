#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_steamos) -eq 1 ]]; then exit 0; fi

echo "Installing Zen"
flatpak install -y app.zen_browser.zen
echo "Installing Valuta"
flatpak install -y io.github.idevecore.Valuta
echo "Installing Signal"
flatpak install -y org.signal.Signal
echo "Installing Text Pieces"
flatpak install -y io.gitlab.liferooter.TextPieces
