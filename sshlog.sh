#!/usr/bin/env bash

ssh-keygen -t rsa -b 4096 -P '' -f /home/q3e4ir/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub; echo 'https://github.com/settings/ssh/new'
read -p 'apply ssh-key' apply
cd ~/dotfiles
git init
git remote rm origin
git remote add origin git@github.com:q3e4ir/dotfiles.git