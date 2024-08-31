#!/usr/bin/env bash

#nixos
sudo cp -r /home/q3e4ir/git-sync/config-links/configuration.nix /etc/nixos/
sudo nixos-rebuild switch

#vscode
sudo cp -r /home/q3e4ir/git-sync/vscodium/settings.json /home/q3e4ir/.config/VSCodium/User/
code --install-extension arrterian.nix-env-selector
code --install-extension jnoortheen.nix-ide
code --install-extension ms-python.debugpy
code --install-extension ms-python.python
code --install-extension rogalmic.bash-debug
code --install-extension zhuangtongfa.material-theme
