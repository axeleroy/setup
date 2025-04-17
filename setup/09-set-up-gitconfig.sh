#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

ln -bs ${SHELL_SETUP_PATH}/config/.gitconfig ~/.gitconfig
ln -bs ${SHELL_SETUP_PATH}/config/.gitignore ~/.gitignore
