#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

/home/linuxbrew/.linuxbrew/bin/brew install moreutils

cat $HOME/.local/share/gnome-shell/extensions/Always-Show-Titles-In-Overview@gmail.com/metadata.json \
  | jq -r '."shell-version" += ["48"]' \
  | sponge $HOME/.local/share/gnome-shell/extensions/Always-Show-Titles-In-Overview@gmail.com/metadata.json
