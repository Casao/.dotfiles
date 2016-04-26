#!/bin/bash -u

function installHomebrew {
  if ! brew list --versions "$1"; then
    brew install $1
  fi
}

function installCask {
  if ! brew cask list --versions "$1"; then
    brew cask install $1
  fi
}

installHomebrew 'trash'
brew tap --full caskroom/cask
brew tap --full caskroom/versions
installCask 'sublime-text3'
installCask 'iterm2-beta'
installCask 'hipchat'
installCask 'slack'
installCask 'google-chrome'
installCask 'google-chrome-canary'
installCask 'firefox'
installCask 'firefoxdeveloperedition'
installCask 'alfred'
installCask 'bettertouchtool'
