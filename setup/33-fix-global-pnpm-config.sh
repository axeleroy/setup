#!/usr/bin/env bash

set -euo pipefail

mkdir -p ~/.config/pnpm
unlink ~/.config/pnpm/rc || echo "~/config/pnpm/rc does not exist"
ln -sb ${SHELL_SETUP_PATH}/config/pnpm-config.yaml ~/.config/pnpm/config.yaml
