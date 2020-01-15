#!/bin/bash

# Script exécuté par cron qui réveille Desktop et initie un backup dans le cloud

if [[ -z ${SCRIPTS_FOLDER} ]]
then
  echo "Variable SCRIPTS_FOLDER must be set"
  exit 1
fi

$SCRIPTS_FOLDER/wake-on-lan/boot-desktop.sh
ssh axel@desktop.lan ~/scripts/backup2backblaze.sh
