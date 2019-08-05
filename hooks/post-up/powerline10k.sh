#!/bin/bash

ZSH="${HOME}/.oh-my-zsh"

if [ ! -d "${ZSH}/custom/themes/powerline10k" ]; then
  git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
fi
