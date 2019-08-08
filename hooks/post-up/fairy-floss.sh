#!/bin/bash

if [ ! -d "${HOME}/fairy-floss" ]; then
  mkdir "${HOME}/fairy-floss"
  git clone git@github.com:aquartier/fairyfloss.git "${HOME}/fairy-floss/iterm"
fi
