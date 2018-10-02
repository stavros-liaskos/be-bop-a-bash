#!/usr/bin/env bash

echo "Installing bash profile and git completion...";
# copy config files to home
cp -f ./.bash_profile ./git-completion.bash ./.gitignore_global ~

# run this files
source ~/.bash_profile

# enable global gitignore
git config --global core.excludesfile ~/.gitignore_global

echo "Installation complete";
