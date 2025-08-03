#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

echo "Installing Smile"
flatpak install -y flathub it.mijorus.smile

# Get latest custom keybinding ID
KEYBINDS_JSON=$(gsettings get org.gnome.settings-daemon.plugins.media-keys custom-keybindings | tr "'" '"')
KEYBIND_ID=$(echo $KEYBINDS_JSON | jq '.[-1:] | .[]' | grep -oP '(?<=custom)(\d)')
# Increment ID
KEYBIND_ID=$(($KEYBIND_ID + 1))

echo "Creating new custom keybinding"
KEYBINDS_JSON=$(echo $KEYBINDS_JSON | jq ". += [\"/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom$KEYBIND_ID/\"]" | tr '"' "'")
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings $KEYBINDS_JSON

COMMAND="gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom$KEYBIND_ID/"

$COMMAND name "Open Smile"
$COMMAND command "flatpak run it.mijorus.smile"
$COMMAND binding "<Ctrl><Alt>Space"
