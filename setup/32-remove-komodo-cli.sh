#!/usr/bin/env bash

set -euo pipefail
if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

$BREW_PATH/brew uninstall moghtech/komodo/km
$BREW_PATH/brew untap moghtech/komodo
$BREW_PATH/brew untrust --formula moghtech/komodo/km
