#!/bin/bash -e

if [ ! -d "${HOME}/.zsh/bundle/Vundle.vim" ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
