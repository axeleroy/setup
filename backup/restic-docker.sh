#!/bin/bash

# Script that backs-up a TrueNAS SCALE App's data into a restic repository

if [[ $# -lt 2 ]]
then
  echo "Usage: ./restic-docker.sh <repository> <app-name>"
fi


PVC=$(k3s kubectl get pvc -n ix-$2 | grep docker-$2-0 | awk '{print $3}')
PVC_MOUNTPOINT=$(zfs list | grep $PVC | head -n 1 | awk '{print $1}')
POD_MOUNTPOINT=$(zfs mount | grep $PVC_MOUNTPOINT | awk '{print $2}')

# Because the app's mountpoint changes between reboots, we have to find the last snapshot
# and tell restic to use it as the parent, otherwise deduplication won't work
export RESTIC_PASSWORD_FILE=/root/restic_pwd.txt
PARENT_SNAPSHOT=$(restic snapshots -r $1 | grep kubelet | tail -n 1 | awk '{print $1}')
# echo "REPO: $1 \t PVC: $PVC \t PVC_MOUNTPOINT: $PVC_MOUNTPOINT \t POD_MOUNTPOINT: $POD_MOUNTPOINT \t PARENT_SNAPSHOT: $PARENT_SNAPSHOT"
/root/scripts/restic-nas.sh $1 $POD_MOUNTPOINT --parent $PARENT_SNAPSHOT
