#!/usr/bin/env bash

set -euo pipefail

if [[ -z ${SHELL_SETUP_PATH+x} ]]
then
  echo "Environment variable SHELL_SETUP_PATH is not set!"
  exit 1
fi

is_hostname() {
  if [[ $(uname -n) -eq "$1" ]]
  then
    echo 1
  else
    echo 0
  fi
}
export -f is_hostname

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
