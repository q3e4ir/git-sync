#!/usr/bin/env bash

chmod +x /home/q3e4ir/dotfiles/set-configs.sh
chmod +x /home/q3e4ir/dotfiles/commit.sh

#nixos
sudo cp -r /home/q3e4ir/dotfiles/config-links/configuration.nix /etc/nixos/
sudo nixos-rebuild switch

#vscode
sudo cp -r /home/q3e4ir/dotfiles/vscodium/settings.json /home/q3e4ir/.config/VSCodium/User/
#sudo cp -r /home/q3e4ir/dotfiles/vscodium/.vscode-oss /home/q3e4ir/
