#!/usr/bin/env bash
set -e

### Text formatting ###

CLEAR="\e[0m"
GREEN_BG="\e[42m"
BOLD="\e[1m"

function pprint {
  echo -e "${GREEN_BG}$1${CLEAR}"
}

echo "Fetching latest Caddy version..."
VERSION=$(curl -s https://api.github.com/repos/caddyserver/caddy/releases/latest | jq -r '.name' | sed -En "s/v(.*)/\1/p")
pprint "Building Caddy ${BOLD}$VERSION"
docker build -f caddy-docker/Dockerfile -t "axeleroy/caddy-docker-proxy:$VERSION" --build-arg "CADDY_VERSION=$VERSION" .
