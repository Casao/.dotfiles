#!/bin/bash -u

brew update

function installHomebrew {
  if [ ! -n "$(brew list --versions "$1" 2>/dev/null)" ]; then
    brew install $1
  fi
}

function installCask {
  if [ ! -n "$(brew cask list --versions "$1" 2>/dev/null)" ]; then
    brew cask install $1
  fi
}

installHomebrew 'trash'
installHomebrew 'rbenv'
installHomebrew 'pyenv'
installHomebrew 'plenv'
installHomebrew 'nodenv'
installHomebrew 'go'
installHomebrew 'ctags'
installHomebrew 'rbenv-ctags'

# Cask
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
