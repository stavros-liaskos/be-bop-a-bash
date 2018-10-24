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

echo "Installing ffmpeg...";
brew list ffmpeg &>/dev/null || brew install ffmpeg $(brew options ffmpeg | grep -vE '\s' | grep -- '--with-' | tr '\n' ' ')
echo "Installation complete";

echo "Installing nvm...";
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
echo "Installation complete";

echo "Installing node...";
brew uninstall --ignore-dependencies node
rm -rdf /usr/local/lib/node_modules
rm -rdf /usr/local/bin/npm
nvm install node
nvm use node
nvm alias default
echo "Installation complete";

echo "Installing yarn...";
brew list yarn &>/dev/null || brew install yarn
echo "Installation complete";

echo "Installing yarn...";
npm install -g now
echo "Installation complete";

echo "Installing Image magick...";
brew list yarn &>/dev/null || brew install imagemagick
echo "Installation complete";

echo "Done!";
