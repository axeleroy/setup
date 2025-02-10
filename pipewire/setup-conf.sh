#!/usr/bin/env bash

mkdir -p ~/.config/pipewire/pipewire-pulse.conf.d/
ln -bs $(pwd)/switch-on-connect.conf ~/.config/pipewire/pipewire-pulse.conf.d/
systemctl --user restart pipewire-pulse.service
