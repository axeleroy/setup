#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_steamos) -eq 1 ]]; then exit 0; fi

mkdir -p ~/.config/wireplumber/wireplumber.conf.d/
ln -sb ${SHELL_SETUP_PATH}/pipewire/51-set-priorities.conf ~/.config/wireplumber/wireplumber.conf.d/51-set-priorities.conf
systemctl --user restart wireplumber
