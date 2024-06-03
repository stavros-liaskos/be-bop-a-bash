#!/usr/bin/env bash

echo "Do you want to install brew? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        echo "Installation complete"
fi

echo "Do you want to install ccat? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        brew list ccat &>/dev/null || brew install ccat
        echo "Installation complete"
fi


echo "Do you want to install pip? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        pip install --upgrade pip
        echo "Installation complete"
fi


echo "Do you want to install wget? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        brew list wget &>/dev/null || brew install wget
        echo "Installation complete"
fi


echo "Do you want to install mkdocs? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        pip install mkdocs
        echo "Installation complete"
fi


echo "Do you want to install youtube-dl? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        sudo -H pip install --upgrade youtube-dl
        echo "Installation complete"
fi


echo "Do you want to install htop-osx? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        brew list htop-osx &>/dev/null || brew install htop-osx
        echo "Installation complete"
fi


echo "Do you want to install ffmpeg? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        brew list ffmpeg &>/dev/null || brew install ffmpeg $(brew options ffmpeg | grep -vE '\s' | grep -- '--with-' | tr '\n' ' ')
        echo "Installation complete"
fi


echo "Do you want to install yarn? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        brew list yarn &>/dev/null || brew install yarn
        echo "Installation complete"
fi


echo "Do you want to install vercel? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        npm i -g vercel
        echo "Installation complete"
fi


echo "Do you want to install Image magick? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        brew list imagemagick &>/dev/null || brew install imagemagick
        echo "Installation complete"
fi


echo "Do you want to install jq? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        brew list jq &>/dev/null || brew install jq
        echo "Installation complete"
fi


echo "Do you want to install httrack? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        brew list httrack &>/dev/null || brew install httrack
        echo "Installation complete"
fi


echo "Do you want to install ncdu? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        brew list ncdu &>/dev/null || brew install ncdu
        echo "Installation complete"
fi


echo "Do you want to install nvm? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
        echo "Installation complete"
fi


echo "Do you want to install sqsmover? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Installing..."
        brew list sqsmover &>/dev/null || brew install sqsmover
        echo "Installation complete"
fi

echo "Done!";
