#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 0 ]]; then exit 0; fi

ln -sb ${SHELL_SETUP_PATH}/systemd/flatpak-update.* ~/.config/systemd/user
systemctl daemon-reload --user
systemctl enable flatpak-update.timer --user
systemctl start flatpak-update.timer --user
