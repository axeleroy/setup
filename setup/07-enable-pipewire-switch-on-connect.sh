#!/usr/bin/env bash

set -euo pipefail

source ${SHELL_SETUP_PATH}/setup/is-steamos.sh
if [[ $(exit_on_steamos) -eq 1 ]]; then exit 0; fi

mkdir -p ~/.config/pipewire/pipewire-pulse.conf.d/
ln -bs $(pwd)/switch-on-connect.conf ~/.config/pipewire/pipewire-pulse.conf.d/
systemctl --user restart pipewire-pulse.service
