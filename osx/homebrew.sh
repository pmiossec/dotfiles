#!/bin/sh

command -v brew >/dev/null 2>&1
if [ "$?" -ne "0" ]; then
    echo "You should probably install Homebrew first:"
    echo "https://github.com/mxcl/homebrew/wiki/installation"
    exit
fi

brew update
brew upgrade
brew cleanup

function install {
  brew ls $1 >/dev/null 2>&1
  if [ "$?" -ne "0" ]; then
    brew install $1
  else
    echo "$1 already installed"
  fi
}

install coreutils

install bash
install bash-completion

install midnight-commander

install gawk
install maven

install git
install mercurial
install subversion

install atool
install wget

install v8

# For slices-of-life
install imagesnap
