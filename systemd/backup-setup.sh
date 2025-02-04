#!/usr/bin/env bash

if [[ -z ${SHELL_SETUP_PATH+x} ]]
then
  echo "Environment variable SHELL_SETUP_PATH is not set!"
  exit 1
fi

sudo cp backup-on-shutdown.service /etc/systemd/system/
sudo sed -i "s#SHELL_SETUP_PATH#$SHELL_SETUP_PATH#g" /etc/systemd/system/backup-on-shutdown.service
# setting user does not seem to help, should take a look into SELinux
sudo sed -i "s#USER#$(id -u)#g" /etc/systemd/system/backup-on-shutdown.service
sudo sed -i "s#GROUP#$(id -g)#g" /etc/systemd/system/backup-on-shutdown.service
systemctl daemon-reload
systemctl enable backup-on-shutdown.service
