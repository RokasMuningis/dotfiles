export PATH="$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$PATH"

export ZSH="$HOME/.dotfiles/oh-my-zsh"
source $ZSH/oh-my-zsh.sh

ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  git
)

DEFAULT_USER=`whoami`
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs time)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
