for config (~/.zsh/*.zsh) source $config
if ls ~/.zsh_private/*.zsh 1> /dev/null 2>&1; then
    for config (~/.zsh_private/*.zsh) source $config
fi
source ~/.dotfiles/powerlevel10k/powerlevel10k.zsh-theme