#!/bin/bash

# Script to backup my desktop computer to my NAS using restic.
# Password and repository are set in RESTIC_PASSWORD_FILE and
# RESTIC_REPOSITORY respectively
#
# I'm using Restic's REST server, so my RESTIC_REPOSITORY looks
# something like this: rest:http://host:8000/repo

restic backup ~/ \
  --exclude-caches \
  --iexclude-file ~/scripts/backup/excludes.txt
