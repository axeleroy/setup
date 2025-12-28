#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

cat $HOME/.local/share/gnome-shell/extensions/Always-Show-Titles-In-Overview@gmail.com/metadata.json \
  | jq -r '."shell-version" += ["49"]' \
  | $BREW_PATH/sponge $HOME/.local/share/gnome-shell/extensions/Always-Show-Titles-In-Overview@gmail.com/metadata.json
