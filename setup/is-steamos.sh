#!/usr/bin/env bash

is_steamos() {
  if command -v steamos-readonly >& /dev/null
  then
    echo 1
  else
    echo 0
  fi
}

