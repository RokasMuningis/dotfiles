export PATH="$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$PATH"

# export ZSH="$HOME/.dotfiles/oh-my-zsh"


plugins=(
  git
)

source ~/.dotfiles/powerlevel10k/powerlevel10k.zsh-theme


DEFAULT_USER=`whoami`
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs time)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
