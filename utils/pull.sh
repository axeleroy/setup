#!/usr/bin/env bash

set -e

source $HOME/.extra

if [[ -z ${SHELL_SETUP_PATH+x} ]]
then
  echo "Environment variable SHELL_SETUP_PATH is not set!"
  exit 1
fi

echo "Pulling $SHELL_SETUP_PATH"
cd $SHELL_SETUP_PATH && git pull
