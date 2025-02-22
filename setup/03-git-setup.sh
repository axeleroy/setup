#!/usr/bin/env bash

source ${SHELL_SETUP_PATH}/setup/is-steamos.sh
if [[ $(exit_on_steamos) -eq 1 ]]; then exit 0; fi

git config --global user.email "axeleroy@users.noreply.github.com"
git config --global user.name "Axel Leroy"
git config --global core.editor "vi"
git config --global pull.rebase true
