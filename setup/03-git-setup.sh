#!/usr/bin/env bash

if [[ $(is_steamos) -eq 1 ]]; then exit 0; fi

git config --global user.email "axeleroy@users.noreply.github.com"
git config --global user.name "Axel Leroy"
git config --global core.editor "vi"
git config --global pull.rebase true
