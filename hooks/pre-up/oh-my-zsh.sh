#!/bin/bash

if [ ! `command -v zsh` ]; then
  brew install zsh
fi

if [ ! -e $HOME/.oh-my-zsh/ ]; then
  curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi
