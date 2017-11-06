
## Installation

  1. Ensure Apple's command line tools are installed (`xcode-select --install` to launch the installer).
  2. [Install Ansible](http://docs.ansible.com/intro_installation.html).
  3. Clone this repository to your local drive.
  4. Run `$ ansible-galaxy install -r requirements.yml` inside this directory to install required Ansible roles.
  5. Run `ansible-playbook main.yml -i inventory -K` inside this directory. Enter your account password when prompted.

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

    mas_installed_apps:
      - { id: 443987910, name: "1Password" }
      - { id: 498486288, name: "Quick Resizer" }
      - { id: 557168941, name: "Tweetbot" }
      - { id: 497799835, name: "Xcode" }

Any variable can be overridden in `config.yml`; see the supporting roles' documentation for a complete list of available variables.

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

  pip_install_packages:
    - awscli

## Testing the Playbook

Many people have asked me if I often wipe my entire workstation and start from scratch just to test changes to the playbook. Nope! Instead, I posted instructions for how I build a [Mac OS X VirtualBox VM](https://github.com/geerlingguy/mac-osx-virtualbox-vm), on which I can continually run and re-run this playbook to test changes and make sure things work correctly.
