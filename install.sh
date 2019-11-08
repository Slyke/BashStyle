#!/bin/bash

touch ~/.bashrc
mkdir -p ~/.bashstyle

cp ./bashrc_inject ~/.bashstyle/bashrc_inject
cp ./colors.conf ~/.bashstyle/colors.conf
cp ./install.sh ~/.bashstyle/reinstall.sh

if grep -qF ". ~/.bashstyle/bashrc_inject" ~/.bashrc;then
  echo "BashStyle is already installed in '~/.bashrc'. Replaced source files in '~/.bashstyle/'"
else
  echo 'if [ -f ~/.bashstyle/bashrc_inject ]; then' >> ~/.bashrc
  echo '    . ~/.bashstyle/bashrc_inject' >> ~/.bashrc
  echo 'fi' >> ~/.bashrc
  echo "BashStyle installed."
fi

source ~/.bashrc