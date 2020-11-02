#!/bin/bash

# Script to backup my desktop computer to my NAS using restic.
# Password and repository are set in RESTIC_PASSWORD_FILE and
# RESTIC_REPOSITORY respectively

restic backup ~/ \
  --exclude-caches \
  --exclude-file="~/scripts/backup/excludes.txt"
