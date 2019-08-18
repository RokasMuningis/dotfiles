#!/usr/bin/env bash

echo "[.] Insalling brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "[.] Updating brew"
brew update

BREW_PREFIX=$(brew --prefix)

echo "[.] Installing core packages"
brew install zsh
brew cask install kitty
brew install vim --with-override-system-vi
brew install tmux htop

echo "[.] Installing Yabai WM"
brew tap koekeishyya/formulae
brew install yabai
