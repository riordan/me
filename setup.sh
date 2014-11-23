#/bin/sh

# install xcode
xcode-select --install

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install pip
sudo easy_install pip

# install ansible 
sudo pip install ansible 

# run playbook
ansible-playbook main.yml -i hosts

