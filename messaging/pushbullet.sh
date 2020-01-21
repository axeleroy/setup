#!/bin/bash

# Script pour envoyer une notification Pushbullet
# Nécessite que la clé d'accès soit renseignée dans la variable PUSHBULLET_ACCESS_TOKEN

if [[ $# -ne 2 ]]
then
  echo "Usage: pushbullet.sh 'Message title' 'Message body'"
  exit 1
fi

if [[ -z ${PUSHBULLET_ACCESS_TOKEN} ]]
then
  echo "Variable PUSHBULLET_ACCESS_TOKEN must be set"
  exit 1
fi

curl --request POST \
--url https://api.pushbullet.com/v2/pushes \
--header "Access-Token: $PUSHBULLET_ACCESS_TOKEN" \
--header 'Cache-Control: no-cache' \
--header 'Content-Type: application/json' \
--data "{\"title\": \"$1\", \"body\": \"$2\", \"type\": \"note\" }"
