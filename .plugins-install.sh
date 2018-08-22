#!/usr/bin/env bash

echo "Installing ccat...";
brew list ccat &>/dev/null || brew install ccat
echo "Installation complete";

echo "Upgrading pip...";
pip install --upgrade pip
echo "Installation complete";

echo "Installing wget...";
brew list wget &>/dev/null || brew install wget
echo "Installation complete";

echo "Installing mkdocs...";
pip install mkdocs
echo "Installation complete";

echo "Installing youtube-dl...";
sudo -H pip install --upgrade youtube-dl
echo "Installation complete";

echo "Installing htop-osx...";
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
brew list htop-osx &>/dev/null || brew install htop-osx
echo "Installation complete";

echo "Done!";
