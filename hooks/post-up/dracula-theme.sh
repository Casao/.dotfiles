#!/bin/bash

if [ ! -d "$HOME/dracula-theme" ]; then
  git clone git@github.com:zenorocha/dracula-theme.git "$HOME/dracula-theme"
fi
