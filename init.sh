#!/bin/sh

# install xcode
xcode-select --install

# install homebrew + homebrew cask
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install caskroom/cask/brew-cask
brew install gcc

# install pip
sudo easy_install pip

# install ansible with changes for El Capitan
sudo pip install --upgrade --ignore-installed ansible

# install zsh (HACK FOR NOW)
sudo curl -L http://install.ohmyz.sh | sh
