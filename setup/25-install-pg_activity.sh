#!/usr/bin/env bash

set -euo pipefail

if [[ $(is_hostname steamdeck) -eq 1 ]]; then exit 0; fi

/home/linuxbrew/.linuxbrew/bin/uv tool install "pg_activity[psycopg]"

