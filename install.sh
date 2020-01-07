#!/bin/bash

touch ~/.bashrc
mkdir -p ~/.bashstyle

if grep -qF ". ~/.bashstyle/bashrc_inject" ~/.bashrc;then
  cp ./bashrc_inject.sh ~/.bashstyle/bashrc_inject.sh
  cp ./colors.conf ~/.bashstyle/colors.conf
  cp ./install.sh ~/.bashstyle/reinstall.sh

  echo "BashStyle is already installed in '~/.bashrc'. Replaced source files in '~/.bashstyle/'"
else
  cp ./bashrc_inject.sh ~/.bashstyle/bashrc_inject.sh
  cp ./colors.conf ~/.bashstyle/colors.conf
  cp ./install.sh ~/.bashstyle/reinstall.sh

  echo 'if [ -f ~/.bashstyle/bashrc_inject.sh ]; then' >> ~/.bashrc
  echo '    . ~/.bashstyle/bashrc_inject.sh' >> ~/.bashrc
  echo 'fi' >> ~/.bashrc
  echo "BashStyle installed."
fi

source ~/.bashrc