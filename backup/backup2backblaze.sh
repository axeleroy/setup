#!/bin/bash

check_vars() {
    if [[ -z ${PASSPHRASE} ]]
    then
      echo "Variable PASSPHRASE must be set"
      exit 1
    fi

    if [[ -z ${B2_KEY_ID} ]]
    then
      echo "Variable B2_KEY_ID must be set"
      exit 1
    fi

    if [[ -z ${B2_APP_KEY} ]]
    then
      echo "Variable B2_APP_KEY must be set"
      exit 1
    fi

    if [[ -z ${B2_BUCKET_NAME} ]]
    then
      echo "Variable B2_BUCKET_NAME must be set"
      exit 1
    fi
}

check_vars
duplicity --exclude '.cache' --exclude '.npm' \
  --exclude '.npm_modules' --exclude '.local/share/Steam' \
  ~ b2://$B2_KEY_ID:$B2_APP_KEY@$B2_BUCKET_NAME
