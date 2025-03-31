#!/usr/bin/env bash

set -euo pipefail

if [ ! -f $HOME/.curl_format ]; then
    ln -sb ${SHELL_SETUP_PATH}/config/.curl_format ~/.curl_format
fi


