#!/usr/bin/env bash

if [[ -z ${SHELL_SETUP_PATH+x} ]]
then
  echo "Environment variable SHELL_SETUP_PATH is not set!"
  exit 1
fi

sudo cp backup-on-shutdown.service /etc/systemd/user/
sudo sed -i "s#SHELL_SETUP_PATH#$SHELL_SETUP_PATH#g" /etc/systemd/user/backup-on-shutdown.service
systemctl daemon-reload
systemctl enable backup-on-shutdown.service --user
