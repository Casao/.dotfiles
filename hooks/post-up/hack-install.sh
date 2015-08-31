#!/bin/bash

function install_hack {
  tmpdir=$(mktemp -d 'hack-fonts')
  cd $tmpdir
  pwd
  curl -o "Hack-Fonts.zip" -L 'https://github.com/chrissimpkins/Hack/releases/download/v2.010/Hack-v2_010-ttf.zip'
  unzip 'Hack-Fonts.zip'
  cp *.ttf "$HOME/Library/Fonts/"
  rm -rf $tmpdir
}

if [ ! -n "$(find ~/Library/Fonts -type f -name 'Hack-*' -print -quit)" ]; then
  install_hack
fi
