#!/usr/bin/env bash

set -euo pipefail

if [[ -z ${SHELL_SETUP_PATH+x} ]]
then
  echo "Environment variable SHELL_SETUP_PATH is not set!"
  exit 1
fi

is_hostname() {
  set +u
  if [ $(uname -n) == "$1" ]
  then
    echo 1
  else
    echo 0
  fi
  set -u
}
export -f is_hostname

brew_install() {
  set +u
  if /home/linuxbrew/.linuxbrew/bin/brew list | grep -Fwq "${1##*/}"
  then
    echo "Formulae $1 already installed"
  else
    echo "Installing formulae $1"
    /home/linuxbrew/.linuxbrew/bin/brew install "$1"
  fi
  set -u
}
export -f brew_install

if [[ ! -x ${SHELL_SETUP_PATH}/setup/migrated.txt ]]
then
  touch ${SHELL_SETUP_PATH}/setup/migrated.txt
fi

for migration_file in ${SHELL_SETUP_PATH}/setup/[0-9]*.sh; do
  migration=$(basename ${migration_file%.sh})
  if grep -Fxq "$migration" ${SHELL_SETUP_PATH}/setup/migrated.txt
  then
    echo "Migration $migration already ran"
  else
    echo "Running $migration"
    bash "$migration_file" || (echo "Migration $migration failed" && exit 1)
    echo "Migration $migration successful"
    echo "$migration" >> ${SHELL_SETUP_PATH}/setup/migrated.txt
  fi
done
