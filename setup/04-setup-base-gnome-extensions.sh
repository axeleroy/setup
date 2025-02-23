#!/usr/bin/env bash

set -euo pipefail

source ${SHELL_SETUP_PATH}/setup/is-steamos.sh
if [[ $(is_steamos) -eq 1 ]]; then exit 0; fi

if ! command -v gnome-extensions-cli 2>&1 >/dev/null
then
    echo "gnome-extensions-cli is required"
    exit 1
fi

while IFS= read -r line
do
    echo "Installing $line"
    gnome-extensions-cli install "$line"
done < ${SHELL_SETUP_PATH}/setup/gnome-extensions-install-list.txt

while IFS= read -r line
do
    echo "Disabling $line"
    gnome-extensions-cli disable "$line"
done < ${SHELL_SETUP_PATH}/setup/gnome-extensions-disable-list.txt
