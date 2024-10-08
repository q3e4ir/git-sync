#!/usr/bin/env bash

chmod +x /home/q3e4ir/dotfiles/dotset.sh
chmod +x /home/q3e4ir/dotfiles/dotcommit.sh
chmod +x /home/q3e4ir/dotfiles/sshlog.sh

#nixos
sudo cp -r /home/q3e4ir/dotfiles/configuration.nix /etc/nixos/

#vscode
sudo cp -r /home/q3e4ir/dotfiles/vscodium/settings.json /home/q3e4ir/.config/VSCodium/User/
codium --install-extension catppuccin.catppuccin-vsc
codium --install-extension catppuccin.catppuccin-vsc-icons
codium --install-extension jnoortheen.nix-ide

#config
sudo cp -r /home/q3e4ir/dotfiles/.config/. /home/q3e4ir/.config/
