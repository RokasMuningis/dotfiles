for config (~/.zsh/*.zsh) source $config
if [ ! -z "$(ls -A ~/.zsh_private)" ]; then
    for config (~/.zsh_private/*.zsh) source $config
fi
source ~/.dotfiles/powerlevel10k/powerlevel10k.zsh-theme