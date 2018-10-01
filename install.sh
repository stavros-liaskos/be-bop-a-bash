#!/usr/bin/env bash

echo "Installing bash profile and git completion...";
\cp -f ./.bash_profile ./git-completion.bash ./.gitignore_global ~
source ~/.bash_profile
echo "Installation complete";
