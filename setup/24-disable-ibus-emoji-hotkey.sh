#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

gsettings set org.freedesktop.ibus.panel.emoji unicode-hotkey "@as []"
