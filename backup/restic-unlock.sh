#!/usr/bin/env bash

# Script that removes lock on repository when shutdown happens in the middle of a backup
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

restic unlock
