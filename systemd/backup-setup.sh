#!/usr/bin/env bash

set -e

if [[ -z ${SHELL_SETUP_PATH+x} ]]
then
  echo "Environment variable SHELL_SETUP_PATH is not set!"
  exit 1
fi

cp ${SHELL_SETUP_PATH}/systemd/backup.* ~/.config/systemd/user
sed -i "s#SHELL_SETUP_PATH#$SHELL_SETUP_PATH#g" ~/.config/systemd/user/backup.service
systemctl daemon-reload --user
systemctl enable backup.timer --user
systemctl start backup.timer --user
