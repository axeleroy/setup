#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_wsl) -eq 0 ]]
then
  cp ${SHELL_SETUP_PATH}/systemd/backup.service ~/.config/systemd/user
  sed -i "s#SHELL_SETUP_PATH#$SHELL_SETUP_PATH#g" ~/.config/systemd/user/backup.service
  systemctl daemon-reload --user
fi

