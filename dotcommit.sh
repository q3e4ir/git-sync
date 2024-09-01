#!/usr/bin/env bash

cd ~/dotfiles

sudo cp -r /home/q3e4ir/.config/VSCodium/User/settings.json /home/q3e4ir/dotfiles/vscodium

git add .
git commit -m 'commit'
git push -u origin main