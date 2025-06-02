#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

brew_install JohannesKaufmann/tap/html2markdown
brew_install pandoc
