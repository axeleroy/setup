#!/usr/bin/env bash

set -euo pipefail
if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

dconf write /org/gnome/desktop/interface/gtk-enable-primary-paste true
