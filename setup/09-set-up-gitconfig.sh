#!/usr/bin/env bash

set -euo pipefail

source ${SHELL_SETUP_PATH}/setup/is-steamos.sh
if [[ $(is_steamos) -eq 1 ]]; then exit 0; fi

ln -bs ${SHELL_SETUP_PATH}/config/.gitconfig ~/.gitconfig
ln -bs ${SHELL_SETUP_PATH}/config/.gitignore ~/.gitignore
