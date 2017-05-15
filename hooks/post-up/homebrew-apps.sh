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

installHomebrew 'ctags'
installHomebrew 'go'
installHomebrew 'nodenv'
installHomebrew 'plenv'
installHomebrew 'pyenv'
installHomebrew 'rbenv'
installHomebrew 'rbenv-ctags'
installHomebrew 'trash'
installHomebrew 'pt'

# Cask
# brew tap --full caskroom/cask
# brew tap --full caskroom/versions
# installCask 'alfred'
# installCask 'bettertouchtool'
# installCask 'charles'
# installCask 'firefox'
# installCask 'firefoxdeveloperedition'
# installCask 'google-chrome'
# installCask 'google-chrome-canary'
# installCask 'hipchat'
# installCask 'iterm2-beta'
# installCask 'slack'
# installCask 'sublime-text3'
