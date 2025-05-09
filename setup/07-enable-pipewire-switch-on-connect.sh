#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

mkdir -p ~/.config/pipewire/pipewire-pulse.conf.d/
ln -bs $(pwd)/switch-on-connect.conf ~/.config/pipewire/pipewire-pulse.conf.d/
systemctl --user restart pipewire-pulse.service
