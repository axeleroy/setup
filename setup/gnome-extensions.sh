#!/usr/bin/env bash

if ! command -v gnome-extensions-cli 2>&1 >/dev/null
then
    echo "gnome-extensions-cli is required"
    exit 1
fi

while IFS= read -r line
do
    echo "Installing $line"
    gnome-extensions-cli install "$line"
done < gnome-extensions-install-list.txt

while IFS= read -r line
do
    echo "Disable $line"
    gnome-extensions-cli disable "$line"
done < gnome-extensions-disable-list.txt
