#/bin/sh

# install xcode
xcode-select --install

# install homebrew + homebrew cask
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install caskroom/cask/brew-cask

# install pip
sudo easy_install pip

# install ansible 
sudo pip install ansible 

# run playbook
ansible-playbook main.yml -i hosts -vvvv

