#!/usr/bin/env bash

apt-get update
apt-get install -y git

mkdir -p ~/.ssh
chmod 700 ~/.ssh
# experiment using keyscan to push ssh keys to vagrant box
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
ssh -T git@github.com

