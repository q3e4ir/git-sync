#!/usr/bin/env bash

read -p "github login: " login
read -p "gmail: " gmail

git config --global user.name
git config --global user.email

ssh-keygen -t rsa -b 4096 -C $gmail
cat ~/.ssh/id_rsa.pub