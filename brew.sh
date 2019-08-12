#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

BREW_PREFIX=$(brew --prefix)

brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum

brew install zsh
brew cask install kitty

brew install vim --with-override-system-vi
brew install tmux htop
