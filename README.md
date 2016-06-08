# me


An ansible playbook for generating my development environment.

![Screen](screenshots/sample-screen.png)

## Run
(Assuming you've installed `git`.)

0. Install Git:
  - Open Terminal and type `git`. OSX will prompt you to install OSX Developer Tools. Do that.

1. Clone the repository:
  - `git clone https://github.com/riordan/me.git && cd me/`

2. Install build requirements
  - `./init.sh`
  - This script will prompt you to install xcode command line tools and ask you for your system password.

3. Build System
  - `make build`

## Configuration

see [`vars/main.yml`](vars/mail.yml)

## Defaults

(located in see [`vars/main.yml`](vars/mail.yml))

* Homebrew casks

  - iterm2
  - slack
  - libreoffice
  - dropbox
  - java
  - skype
  - atom
  - vagrant
  - gdal-framework
  - virtualbox
  - google-chrome
  - firefox
  - onepassword
  - xquartz
  - caffeine
  - satellite-eyes
  - vlc
  - josm
  - colloquy
  - pgadmin3
  - torbrowser
  - qgis
  - nylas-n1
  - tunnelblick
  - gpgtools
  - spotify
  - evernote
  - rstudio
  - cyberduck
  - little-snitch
  - micro-snitch

* Homebrew packages

  - git
  - poppler
  - gcc
  - clang
  - python2
  - python3
  - pandoc
  - wget
  - postgresql
  - sqlite
  - gdal
  - libevent
  - node
  - n
  - tmux
  - boost
  - boost-python
  - protobuf
  - hub
  - heroku-toolbelt
  - gnupg2
  - vim
  - awscli
  - ykpers
  - go --cross-compile-common
  - hg
  - bzr
  - svn
  - snappy
  - autoconf
  - automake
  - libtool
  - pkg-config

* Launchd services:
    - Nothing currently. Use Docker for this unless absolutely necessary.


* Python packages

  - pip
  - ipython
  - virtualenvwrapper
  - pandas
  - numpy
  - scipy
  - matplotlib

* Git
  - global username and email are set.

## Manual Steps

  1. Link 1Password to Dropbox.
  2. Install [Docker Mac Beta](https://blog.docker.com/2016/03/docker-for-mac-windows-beta/)
  3. Set up browser plugins
