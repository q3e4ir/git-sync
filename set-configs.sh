#!/usr/bin/env bash

chmod +x /home/q3e4ir/dotfiles/set-configs.sh
chmod +x /home/q3e4ir/dotfiles/commit.sh

#nixos
sudo cp -r /home/q3e4ir/dotfiles/config-links/configuration.nix /etc/nixos/
sudo nixos-rebuild switch

#vscode
sudo cp -r /home/q3e4ir/dotfiles/vscodium/settings.json /home/q3e4ir/.config/VSCodium/User/
sudo cp -r /home/q3e4ir/dotfiles/vscodium/.vscode-oss /home/q3e4ir/
codium --install-extension arrterian.nix-env-selector
codium --install-extension jnoortheen.nix-ide
codium --install-extension ms-python.debugpy
codium --install-extension ms-python.python
codium --install-extension rogalmic.bash-debug
codium --install-extension zhuangtongfa.material-theme
