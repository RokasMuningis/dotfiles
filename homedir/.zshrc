## REQUIRED
autoload -U compinit && compinit
zmodload -i zsh/complist

for config (~/.zsh/*.zsh) source $config
if [ ! -z "$(ls -A ~/.zsh_private)" ]; then
    for config (~/.zsh_private/*.zsh) source $config
fi

export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
source ~/.dotfiles/nord-prompt/prompt.zsh