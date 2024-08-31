#!/usr/bin/env bash

sudo cp -r /home/q3e4ir/git-sync/config-links/configuration.nix /etc/nixos/
sudo nixos-rebuild switch
sudo cp -r /home/q3e4ir/git-sync/vscodium/settings.json /home/q3e4ir/.config/VSCodium/User/