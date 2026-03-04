#!/usr/bin/env bash

set -euo pipefail

mkdir -p ~/.config/pnpm
ln -sb ${SHELL_SETUP_PATH}/config/pnpm-config.yaml ~/.config/pnpm/rc
