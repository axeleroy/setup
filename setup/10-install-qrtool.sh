#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_steamos) -eq 1 ]]; then exit 0; fi

brew install qrtool
