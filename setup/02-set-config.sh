#!/usr/bin/env bash

set -euo pipefail

echo "Linking dotfiles"
for file in ${SHELL_SETUP_PATH}/config/.*; do
    [ -r "$file" ] && [ -f "$file" ] && ln -sb $file ~/$$(basename ${file});
done;
unset file;

echo "Linking Starship configuration"
ln -sb ${SHELL_SETUP_PATH}/config/starship.toml ~/.config/starship.toml
