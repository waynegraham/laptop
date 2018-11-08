#! /bin/bash

if [ ! -d "$HOME/.bash-it" ]; then
  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  ~/.bash_it/install.sh --silent
fi
