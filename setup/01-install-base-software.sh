#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

echo "Installing uv"
brew_install uv
echo "Installing tealdeer"
brew_install tealdeer && $BREW_PATH/tldr --seed-config
echo "Installing isd"
$BREW_PATH/uv tool install --python=3.12 isd-tui
echo "Installing gnome-extensions-cli"
$BREW_PATH/uv tool install gnome-extensions-cli
echo "Installing gojq"
brew_install gojq

