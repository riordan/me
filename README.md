
## Installation

  1. Ensure Apple's command line tools are installed (`xcode-select --install` to launch the installer).
  2. Install [homebrew](https://brew.sh) the official way ('/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"')
  2. [Install Ansible](http://docs.ansible.com/intro_installation.html). ('sudo easy_install pip && sudo pip install ansible')
  3. Disable Apple Gatekeeper to run unsigned code (`sudo spctl --master-disable`)
  3. Clone this repository to your local drive.
  4. Run `$ ansible-galaxy install -r requirements.yml` inside this directory to install required Ansible roles.
  5. Run `ansible-playbook main.yml -i inventory -K` inside this directory. Enter your account password when prompted.
  6. You may have to run this extra times because shruggie

  ### Extra Steps
  1. Sign into Dropbox to download 1password sync
  2. Activate licenses for Omnifocus, Omnioutliner, Omnigraffle, Sketch, Scrivener
  3. Install ohmyzsh (`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`)
  4. Fix .zshrc (`rm ~/.zshrc && ln -s ~/code/dotfiles/.zshrc ~/.zshrc`)
  4. Install powerline fonts (`cd ~/code && git clone https://github.com/powerline/fonts.git powerline && cd powerline && ./install.sh && cd .. && rm powerline && cd ~`)
  5. Launch programs that need to autostart
   1. Caffeine
   2. Docker
   2. Satellite Eyes
   3. 1password, now that it's probably synched up
  4. setup gnupg
   1. hopefully the .gnupg folder of configs moves over from dotfiles
   2. Fetch the keyserver key (`sudo curl -s "https://sks-keyservers.net/sks-keyservers.netCA.pem" -o /etc/sks-keyservers.netCA.pem`)
   3. Install your own damn key (`gpg --recv-keys 0x877E3D1B0E162847`)
  5. Add email accounts
  6. Make your cursor huge in Accessibility

> Note: If some Homebrew commands fail, you might need to agree to Xcode's license or fix some other Brew issue. Run `brew doctor` to see if this is the case.

### Running a specific set of tagged tasks

You can filter which part of the provisioning process to run by specifying a set of tags using `ansible-playbook`'s `--tags` flag. The tags available are `dotfiles`, `homebrew`, `mas` and `osx`.

    ansible-playbook main.yml -i inventory -K --tags "dotfiles,homebrew"

## Overriding Defaults

Not everyone's development environment and preferred software configuration is the same.

You can override any of the defaults configured in `default.config.yml` by creating a `config.yml` file and setting the overrides in that file. For example, you can customize the installed packages and apps with something like:

    homebrew_installed_packages:
      - cowsay
      - git
      - go

## What about dotfiles
They're at: https://github.com/riordan/dotfiles

Update them there or change the location

## Included Applications / Configuration (Default)
homebrew_installed_packages:
  - zsh
  - zsh-completions
  - gnupg
  - git
  - git-lfs
  - hub
  - sqlite
  - node
  - nvm
  - wget
  - gifsicle
  - go
  - python3
  - python
  - gcc
  - ykpers
  - gdal
  - tmux
  - boost
  - boost-python
  - vim
  - htop
  - pinentry-mac
  - libyubikey
  - imagemagick --with-webp


homebrew_cask_apps:
  - docker
  - dropbox
  - firefox
  - google-chrome
  - spotify
  - skitch
  - slack
  - atom
  - cyberduck
  - evernote
  - omnifocus
  - omnioutliner
  - 1password
  - scrivener
  - signal
  - sketch
  - vagrant
  - virtualbox
  - tomighty
  - torbrowser
  - zotero
  - iterm2
  - satellite-eyes
  - vlc
  - little-snitch
  - colloquy
  - java
  - libreoffice
  # CTF specific
  - soqlxplorer
  - eclipse-java
  - sfdx

  pip_install_packages:
    - awscli

## Testing the Playbook

Many people have asked me if I often wipe my entire workstation and start from scratch just to test changes to the playbook. Nope! Instead, I posted instructions for how I build a [Mac OS X VirtualBox VM](https://github.com/geerlingguy/mac-osx-virtualbox-vm), on which I can continually run and re-run this playbook to test changes and make sure things work correctly.
