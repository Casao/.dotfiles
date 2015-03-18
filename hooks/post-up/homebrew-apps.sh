#!/bin/bash

if [ ! brew list --versions trash ]; then
  brew install trash
fi