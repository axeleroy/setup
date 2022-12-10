#!/bin/bash

# Script to make snapshots of my.
# Password and repository are set in RESTIC_PASSWORD_FILE and
# RESTIC_REPOSITORY respectively

if [[ $# -lt 2 ]]
then
  echo "Usage: ./restic-nas.sh <repository> <path to backup>"
fi

restic backup -r $@ --exclude-caches
