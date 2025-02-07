#!/usr/bin/env bash

for file in $(pwd)/.*; do
    [ -r "$file" ] && [ -f "$file" ] && [[ $file =~ (\.[a-z]+) ]] && ln -sb $file ~/${BATCH_REMATCH[1]};
done;
unset file;

ln -sb $(pwd)/starship.toml ~/.config/starship.toml
