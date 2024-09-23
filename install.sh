#!/usr/bin/env bash

echo "Installing bash profile...";
# copy config files to home
cp -rf ./.gitignore_global ./be-bop-a-bash ~

# Add the line only if it doesn't already exist
LINE='source ~/be-bop-a-bash/be_bop_loader'
grep -qxF "$LINE" ~/.bash_profile || echo -e "\n$LINE\n" >> ~/.bash_profile

# run this files
source ~/.bash_profile

# enable global gitignore
git config --global core.excludesfile ~/.gitignore_global

echo "Installation complete";
