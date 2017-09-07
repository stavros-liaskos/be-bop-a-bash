#!/usr/bin/env bash

git pull origin master;

echo "Installing bash profile and git completion...";
cp -v ./.bash_profile ./git-completion.bash ~
source ~/.bash_profile
echo "Installation complete";