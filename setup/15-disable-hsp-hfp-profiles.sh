#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

mkdir -p ~/.config/wireplumber/wireplumber.conf.d/
ln -sb ${SHELL_SETUP_PATH}/pipewire/52-disable-hsp-hfp-profiles.conf ~/.config/wireplumber/wireplumber.conf.d/52-disable-hsp-hfp-profiles.conf
systemctl --user restart wireplumber
