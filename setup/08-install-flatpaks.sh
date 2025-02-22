#!/usr/bin/env bash

set -euo pipefail

source ${SHELL_SETUP_PATH}/setup/is-steamos.sh
if [[ $(is_steamos) -eq 1 ]]; then exit 0; fi

echo "Installing Zen"
flatpak install app.zen_browser.zen
echo "Installing Valuta"
flatpak install io.github.idevecore.Valuta
echo "Installing Signal"
flatpak install org.signal.Signal
echo "Installing Text Pieces"
flatpak install io.gitlab.liferooter.TextPieces
