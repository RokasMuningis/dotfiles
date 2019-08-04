#!/usr/bin/env bash

if [[ ! -d ~/.dotfiles/powerlevel10k ]]; then
	echo "Getting powerleve10k theme...."
	git clone https://github.com/romkatv/powerlevel10k.git ~/.dotfiles/powerlevel10k
fi

if [ ! -d ~/.dotfiles/homedir/.zsh_private ]; then
  echo "Creating folder for private zsh configs"
  mkdir ~/.dotfiles/homedir/.zsh_private
fi

echo "sym-link .dotfiles"
pushd homedir > /dev/null 2>&1
now=$(date +"%Y_%m_%d_%H_%M_%S")

for file in .*; do
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

popd > /dev/null 2>&1
