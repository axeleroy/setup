#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

brew_install pipx
pipx install "pg_activity[psycopg]"

