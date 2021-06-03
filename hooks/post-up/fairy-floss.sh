#!/bin/bash

if [ ! -d "${HOME}/fairy-floss" ]; then
  mkdir "${HOME}/fairy-floss"
  ff="${HOME}/fairy-floss";
  git clone git@github.com:aquartier/fairyfloss.git "${ff}/iterm"
fi
