#!/bin/bash

CDIR=$(pwd)
REPO="https://raw.githubusercontent.com/Slyke/BashStyle"

touch ~/.bashrc
mkdir -p ~/.bashstyle

cd ~/.bashstyle

if grep -qF ". ~/.bashstyle/bashrc_inject" ~/.bashrc; then
  rm bashrc_inject.sh 2>/dev/null 
  rm colors.conf 2>/dev/null 
  rm reinstall.sh 2>/dev/null 

  wget -q -O bashrc_inject.sh "$REPO/master/bashrc_inject.sh"
  wget -q -O colors.conf "$REPO/master/colors.conf"
  wget -q -O reinstall.sh "$REPO/master/web_install.sh"

  echo "BashStyle is already installed in '~/.bashrc'. Replaced source files in '~/.bashstyle/'"
else
  rm bashrc_inject.sh 2>/dev/null 
  rm colors.conf 2>/dev/null 
  rm reinstall.sh 2>/dev/null 

  wget -q -O bashrc_inject.sh "$REPO/master/bashrc_inject.sh"
  wget -q -O colors.conf "$REPO/master/colors.conf"
  wget -q -O reinstall.sh "$REPO/master/web_install.sh"

  echo 'if [ -f ~/.bashstyle/bashrc_inject.sh ]; then' >> ~/.bashrc
  echo '  . ~/.bashstyle/bashrc_inject.sh' >> ~/.bashrc
  echo 'fi' >> ~/.bashrc
  echo "BashStyle installed."
fi

source ~/.bashrc
cd $CDIR
