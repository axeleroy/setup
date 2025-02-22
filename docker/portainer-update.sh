#!/usr/bin/env bash
set -euo pipefail

### Text formatting ###

CLEAR="\e[0m"
GREEN_BG_BOLD="\e[1;42m"

function pprint {
  echo -e "${GREEN_BG_BOLD}$1${CLEAR}"
}

PREVIOUS_VERSION=$(docker image ls portainer/portainer-ce:sts | awk '{print $3}' | tail -n 1)

pprint "Pulling latest portainer image"
docker pull portainer/portainer-ce:sts
pprint "Stopping container"
docker stop portainer
pprint "Deleting container"
docker rm portainer
pprint "Re-creating container"
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:sts
pprint "Deleting image for previous version"
docker image rm $PREVIOUS_VERSION
pprint "Update done!"
