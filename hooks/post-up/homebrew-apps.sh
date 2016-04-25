#!/bin/bash

if [ ! brew list --versions trash ]; then
  brew install trash
fi

if [ ! brew list --versions cask ]; then
  brew install caskroom/cask/brew-cask
  brew tap --full caskroom/versions
fi

if [ ! brew cask list --versions sublime-text3 ]; then
  brew cask install sublime-text3
fi

if [ ! brew cask list --versions iterm2-beta ]; then
  brew cask install iterm2-beta
fi
