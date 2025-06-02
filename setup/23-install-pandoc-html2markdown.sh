#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

/home/linuxbrew/.linuxbrew/bin/brew install JohannesKaufmann/tap/html2markdown
/home/linuxbrew/.linuxbrew/bin/brew install pandoc
