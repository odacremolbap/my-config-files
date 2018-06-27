
export ZSH=/home/pablo/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

# history per window
setopt no_share_history


# python dev section
export WORKON_HOME=~/virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
