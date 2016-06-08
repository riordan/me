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

# upgrade setuptools
sudo pip install --upgrade setuptools

# install ansible
sudo pip install ansible

# install zsh (HACK FOR NOW)
sudo curl -L http://install.ohmyz.sh | sh
