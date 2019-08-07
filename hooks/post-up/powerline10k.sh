#!/bin/bash

ZSH="${HOME}/.oh-my-zsh"

if [ ! -d "${ZSH}/custom/themes/powerlevel10k" ]; then
  git clone https://github.com/romkatv/powerlevel10k.git "${ZSH}/custom/themes/powerlevel10k"
fi
