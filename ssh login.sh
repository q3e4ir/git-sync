#!/usr/bin/env bash

ssh-keygen -t rsa -b 4096 -C durychyaroslav@gmail.com
cat ~/.ssh/id_rsa.pub

echo "https://github.com/settings/ssh/new"
read -p "apply ssh-key" apply

cd git-sync

git init
git remote rm origin
git remote add origin git@github.com:q3e4ir/git-sync.git
git add .
git commit -m "commit"
git push -u origin main

