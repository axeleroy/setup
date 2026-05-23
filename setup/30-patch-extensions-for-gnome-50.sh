#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

EXTENSION_UUIDS="bluetooth-battery@michalw.github.com Always-Show-Titles-In-Overview@gmail.com gnome-ui-tune@itstime.tech auto-theme-switcher@amritashan.github.io"

for UUID in $EXTENSION_UUIDS
do
  echo "Patching ${UUID}"
  cat $HOME/.local/share/gnome-shell/extensions/$UUID/metadata.json \
    | jq -r '."shell-version" += ["50"]' \
    | $BREW_PATH/sponge $HOME/.local/share/gnome-shell/extensions/$UUID/metadata.json
done
