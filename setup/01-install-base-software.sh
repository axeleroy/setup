#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

echo "Seeding tealdeer config"
$BREW_PATH/tldr --seed-config
echo "Installing isd"
$BREW_PATH/uv tool install --python=3.12 isd-tui
echo "Installing gnome-extensions-cli"
$BREW_PATH/uv tool install gnome-extensions-cli

