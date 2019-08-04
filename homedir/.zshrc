for config (~/.zsh/*.zsh) source $config
[ -r ~/.zsh_private ] && for config (~/.zsh_private/*.zsh) source $config
source ~/.dotfiles/powerlevel10k/powerlevel10k.zsh-theme