#!/usr/bin/env bash

echo "[.] Starting setup"

if [[ ! -d ~/.dotfiles/nord-prompt ]]; then		
 	echo "  [.] Getting Nord Prompt"		
 	git clone https://github.com/rokasmuningis/nord-prompt.git ~/.dotfiles/nord-prompt		
 fi

if [ ! -d ~/.dotfiles/homedir/.zsh_private ]; then
  echo "  [.] Creating folder for private zsh configs"
  mkdir ~/.dotfiles/homedir/.zsh_private
fi

if [ ! -f ~/.dotfiles/config/kitty/kitty_custom.conf ]; then
  echo "  [.] Creating file for custom kitty conf"
  touch ~/.dotfiles/config/kitty/kitty_custom.conf
fi

pushd homedir > /dev/null 2>&1
now=$(date +"%Y_%m_%d_%H_%M_%S")


## BEGIN Setup dotfiles
echo "  [.] Creating sym-links for .dotfiles"
for file in .*; do
  if [[ $file == "." || $file == ".." ]]; then
    continue
  fi
  echo "    [.] Copying/updating ${file}"
  if [[ -e ~/$file ]]; then
      mkdir -p ~/.dotfiles_backup/$now
      mv ~/$file ~/.dotfiles_backup/$now/$file
  fi
  unlink ~/$file > /dev/null 2>&1
  ln -s ~/.dotfiles/homedir/$file ~/$file
done
## END Setup dotfiles

popd > /dev/null 2>&1
pushd config > /dev/null 2>&1

## BEGIN Setup dotfiles
echo "  [.] Creating sym-links for configs"
for dir in *; do
  if [ ! -d "${dir}" ]; then
    continue
  fi
  echo "    [.] Copying/updating ${dir}"
  if [[ -d ~/.config/$dir ]]; then
      mkdir -p ~/.config_backup/$now
      mv ~/.config/$dir ~/.config_backup/$now/$dir
  fi
  unlink ~/.config/$dir > /dev/null 2>&1
  ln -s ~/.dotfiles/config/$dir ~/.config/$dir
done
## END Setup dotfiles

popd > /dev/null 2>&1

echo "[.] Done!"
