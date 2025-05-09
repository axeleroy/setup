#!/usr/bin/env bash

# Script to backup my computers to my NAS using restic.
# Password and repository are set in RESTIC_PASSWORD_FILE and
# RESTIC_REPOSITORY respectively

# Source environment variables
source $HOME/.extra

if [[ -z ${RESTIC_PASSWORD_FILE+x} ]]
then
  echo "Environment variable RESTIC_PASSWORD_FILE is not set!"
  exit 1
fi

if [[ -z ${RESTIC_REPOSITORY+x} ]]
then
  echo "Environment variable RESTIC_REPOSITORY is not set!"
  exit 1
fi

if [[ -z ${SHELL_SETUP_PATH+x} ]]
then
  echo "Environment variable SHELL_SETUP_PATH is not set!"
  exit 1
fi

echo "Attempting to backup"

restic backup $HOME \
  --exclude-caches \
  --iexclude-file "$SHELL_SETUP_PATH/backup/excludes.txt"
