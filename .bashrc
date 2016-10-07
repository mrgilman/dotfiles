eval "$(rbenv init -)"

# Set vim as editor
export VISUAL=vim
export EDITOR=$VISUAL

# Git completion and prompt
. ~/git-completion.bash
. ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export PS1='\[\033[1;34m\]\w\[\033[1;35m\]$(__git_ps1 " %s") \[\033[1;31m\]\$ \[\033[0m\]'
export NVM_DIR="$HOME/.nvm"
  . "$(brew --prefix nvm)/nvm.sh"

# Aliases
alias e="$EDITOR"

# Color output
export CLICOLOR=1
export PATH=$PATH:/Users/melanie/bin
