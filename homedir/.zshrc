## REQUIRED
autoload -U compinit && compinit
zmodload -i zsh/complist

for config (~/.zsh/*.zsh) source $config
if [ ! -z "$(ls -A ~/.zsh_private)" ]; then
    for config (~/.zsh_private/*.zsh) source $config
fi