#!/usr/bin/env bash

echo "Installing bash profile and git completion...";
# copy config files to home
cp -rf ./.bash_profile ./.gitignore_global ./be-bop-a-bash ~

# run this files
source ~/.bash_profile

# enable global gitignore
git config --global core.excludesfile ~/.gitignore_global

echo "Installation complete";
