#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

echo "Installing uv"
brew_install uv
echo "Installing tealdeer"
brew_install tealdeer && tldr --seed-config
echo "Installing isd"
uv tool install --python=3.12 isd-tui
echo "Installing gnome-extensions-cli"
uv tool install gnome-extensions-cli
echo "Installing gojq"
brew_install gojq

