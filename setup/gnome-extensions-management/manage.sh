#!/usr/bin/env bash

set -euo pipefail

if ! command -v $HOME/.local/bin/gnome-extensions-cli 2>&1 >/dev/null
then
    echo "gnome-extensions-cli is required"
    exit 1
fi

function install() {
  while IFS= read -r line
  do
      echo "Installing $line"
      $HOME/.local/bin/gnome-extensions-cli install "$line"
  done <<< "$1"
}

function disable() {
  while IFS= read -r line
  do
      echo "Disabling $line"
      $HOME/.local/bin/gnome-extensions-cli disable "$line"
  done <<< "$1"
}

function list_extensions_to_install() {
  EXTENSION_LIST_FILE=$(mktemp)
  cat "${SHELL_SETUP_PATH}/setup/gnome-extensions-management/enable-common.list" > $EXTENSION_LIST_FILE
  set +u
  if [ -v COMPUTER_TYPE ]
  then
    cat "${SHELL_SETUP_PATH}/setup/gnome-extensions-management/enable-${COMPUTER_TYPE}.list" >> $EXTENSION_LIST_FILE
  fi
  set -u
  cat $EXTENSION_LIST_FILE
}

function list_extensions_to_disable() {
  comm -13 <(list_extensions_to_install | sort) <($HOME/.local/bin/gnome-extensions-cli list --only-uuid | sort)
}

install "$(list_extensions_to_install)"
disable "$(list_extensions_to_disable)"

