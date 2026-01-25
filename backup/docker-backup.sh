#!/usr/bin/env bash

RESTIC_REPOSITORY=/mnt/restic-repos/restic \
RESTIC_PASSWORD_FILE=/root/restic_pwd.txt \
restic backup /var/lib/docker/volumes --exclude-file=/home/axel/setup/backup/docker-excludes.txt
