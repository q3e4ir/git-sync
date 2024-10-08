#!/usr/bin/env bash

chmod +x /home/q3e4ir/dotfiles/dotset.sh
chmod +x /home/q3e4ir/dotfiles/dotcommit.sh
chmod +x /home/q3e4ir/dotfiles/sshlog.sh

#nixos
sudo cp -r /home/q3e4ir/dotfiles/config-links/configuration.nix /etc/nixos/
sudo nixos-rebuild switch

#vscode
sudo cp -r /home/q3e4ir/dotfiles/vscodium/settings.json /home/q3e4ir/.config/VSCodium/User/
codium --install-extension catppuccin.catppuccin-vsc
codium --install-extension catppuccin.catppuccin-vsc-icons
codium --install-extension jnoortheen.nix-ide

#kitty
sudo cp -r /home/q3e4ir/dotfiles/config-links/kitty.conf /home/q3e4ir/.config/kitty/

#neofetch
sudo cp -r /home/q3e4ir/dotfiles/neofetch/config.conf /home/q3e4ir/.config/neofetch/

#hyprland
sudo cp -r /home/q3e4ir/dotfiles/config-links/hyprland.conf /home/q3e4ir/.config/hypr/

#wofi
sudo cp -r /home/q3e4ir/dotfiles/wofi/ /home/q3e4ir/.config/

#waybar
sudo cp -r /home/q3e4ir/dotfiles/waybar/ /home/q3e4ir/.config/
