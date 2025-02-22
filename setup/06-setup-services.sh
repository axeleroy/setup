#!/usr/bin/env bash

set -euo pipefail

cp ${SHELL_SETUP_PATH}/systemd/backup.* ~/.config/systemd/user
cp ${SHELL_SETUP_PATH}/systemd/pull-setup.service ~/.config/systemd/user
sed -i "s#SHELL_SETUP_PATH#$SHELL_SETUP_PATH#g" ~/.config/systemd/user/backup.service
sed -i "s#SHELL_SETUP_PATH#$SHELL_SETUP_PATH#g" ~/.config/systemd/user/pull-setup.service
systemctl daemon-reload --user
systemctl enable backup.timer --user
systemctl start backup.timer --user
systemctl enable pull-setup.service --user
