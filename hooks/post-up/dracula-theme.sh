#!/bin/bash

if [ ! -d "${HOME}/dracula-theme" ]; then
  git clone git@github.com:dracula/dracula-theme.git "${HOME}/dracula-theme"
  git clone git@github.com:dracula/zsh "${HOME}/dracula-theme/zsh"
fi
