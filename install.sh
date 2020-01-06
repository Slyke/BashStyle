#!/bin/bash

touch ~/.bashrc
mkdir -p ~/.bashstyle

if grep -qF ". ~/.bashstyle/bashrc_inject" ~/.bashrc;then
  cp ./bashrc_inject ~/.bashstyle/bashrc_inject
  cp ./colors.conf ~/.bashstyle/colors.conf
  cp ./install.sh ~/.bashstyle/reinstall.sh

  echo "BashStyle is already installed in '~/.bashrc'. Replaced source files in '~/.bashstyle/'"
else
  cp ./bashrc_inject ~/.bashstyle/bashrc_inject
  cp ./colors.conf ~/.bashstyle/colors.conf
  cp ./install.sh ~/.bashstyle/reinstall.sh

  echo 'if [ -f ~/.bashstyle/bashrc_inject ]; then' >> ~/.bashrc
  echo '    . ~/.bashstyle/bashrc_inject' >> ~/.bashrc
  echo 'fi' >> ~/.bashrc
  echo "BashStyle installed."
fi

source ~/.bashrc