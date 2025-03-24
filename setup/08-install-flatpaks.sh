#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_steamos) -eq 1 ]]; then exit 0; fi

echo "Installing Zen"
flatpak install -y flathub app.zen_browser.zen
echo "Installing Valuta"
flatpak install -y flathub io.github.idevecore.Valuta
echo "Installing Signal"
flatpak install -y flathub org.signal.Signal
echo "Installing Text Pieces"
flatpak install -y flathub io.gitlab.liferooter.TextPieces
echo "Installing LocalSend"
flatpak install -y flathub org.localsend.localsend_app
