#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

mkdir -p ~/.config/mise
ln -bs ${SHELL_SETUP_PATH}/config/mise ~/.config/mise/config.toml
