#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

echo "Installing Smile"
flatpak install -y flathub it.mijorus.smile

exit 0

# Get latest custom keybinding ID
KEYBINDS_JSON=$(gsettings get org.gnome.settings-daemon.plugins.media-keys custom-keybindings | tr "'" '"')
KEYBIND_ID_NUMBER=$(echo $KEYBINDS_JSON | jq '.[-1:] | .[]' | grep -oP '(?<=custom)(\d)')
# Increment ID
KEYBIND_ID_NUMBER=$(($KEYBIND_ID_NUMBER + 1))

echo "Creating new custom keybinding"
KEYBIND_ID="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom$KEYBIND_ID_NUMBER/"
KEYBINDS_JSON=$(echo $KEYBINDS_JSON | jq ". += [\"$KEYBIND_ID\"]" | tr '"' "'" | tr -d "\n")
COMMAND="gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:$KEYBIND_ID"

$COMMAND name "Open Smile"
$COMMAND command "flatpak run it.mijorus.smile"
$COMMAND binding "<Ctrl><Alt>space"

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "$KEYBINDS_JSON"
