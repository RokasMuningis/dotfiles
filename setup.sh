#!/usr/bin/env bash

if [[ ! -d "./oh-my-zsh/custom/themes/powerlevel9k" ]]; then
	echo "Getting powerlevel9k theme...."
	git clone https://github.com/bhilburn/powerlevel9k.git oh-my-zsh/custom/themes/powerlevel9k
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
