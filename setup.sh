#!/usr/bin/env bash

if [[ ! -d ~/.dotfiles/powerlevel10k ]]; then
	echo "Getting powerleve10k theme...."
	git clone https://github.com/romkatv/powerlevel10k.git ~/.dotfiles/powerlevel10k
fi

if [ ! -d ~/.dotfiles/homedir/.zsh_private ]; then
  echo "Creating folder for private zsh configs"
  mkdir ~/.dotfiles/homedir/.zsh_private
fi

pushd homedir > /dev/null 2>&1
now=$(date +"%Y_%m_%d_%H_%M_%S")


## BEGIN Setup dotfiles
echo "sym-link .dotfiles"
for file in .*; do
  echo "${file}";
  if [[ $file == "." || $file == ".." ]]; then
    continue
  fi
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
echo "sym-link config/"
for dir in *; do
  echo "${dir}";
  if [ ! -d "${dir}" ]; then
    continue
  fi
  if [[ -d ~/.config/$dir ]]; then
      mkdir -p ~/.config_backup/$now
      mv ~/.config/$dir ~/.config_backup/$now/$dir
  fi
  unlink ~/.config/$dir > /dev/null 2>&1
  ln -s ~/.dotfiles/config/$dir ~/.config/$dir
done
## END Setup dotfiles

popd > /dev/null 2>&1
