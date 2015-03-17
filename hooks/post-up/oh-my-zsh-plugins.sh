#!/bin/bash

if [ ! -d "$ZSH/custom/plugins/k" ]; then
  git clone git@github.com:supercrabtree/k.git $ZSH/custom/plugins/k
fi

if [ ! -d "$ZSH/custom/plugins/zsh-syntax-highlighting" ]; then
  git clone git@github.com:zsh-users/zsh-syntax-highlighting.git $ZSH/custom/plugins/zsh-syntax-highlighting
fi

if [ ! -d "$ZSH/custom/plugins/cd-gitroot" ]; then
  git clone git@github.com:mollifier/cd-gitroot.git $ZSH/custom/plugins/cd-gitroot
fi
