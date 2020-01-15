#!/bin/bash

# Boots Desktop and reboots in on Windows

$SCRIPTS_FOLDER/boot-desktop.sh
ssh -t axel@desktop.lan ~/scripts/wake-on-lan/reboot2win.sh
