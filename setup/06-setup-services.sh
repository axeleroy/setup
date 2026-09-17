#!/usr/bin/env bash

set -euo pipefail

mkdir -p ~/.config/systemd/user

cp ${SHELL_SETUP_PATH}/systemd/pull-setup.service ~/.config/systemd/user
sed -i "s#SHELL_SETUP_PATH#$SHELL_SETUP_PATH#g" ~/.config/systemd/user/pull-setup.service

if [[ $(is_wsl) -eq 0 ]]
then
  cp ${SHELL_SETUP_PATH}/systemd/backup.* ~/.config/systemd/user
  sed -i "s#SHELL_SETUP_PATH#$SHELL_SETUP_PATH#g" ~/.config/systemd/user/backup.service
fi

systemctl daemon-reload --user
systemctl enable pull-setup.service --user

if [[ $(is_wsl) -eq 0 ]]
then
  systemctl enable backup.timer --user
  systemctl start backup.timer --user
fi
