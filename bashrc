# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# git-bash-prompt config
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi

# variables
if [ -f ~/.bash_vars ]; then
    . ~/.bash_vars
fi

# include bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# git completion
source ~/.git-completion.bash

# aliases
eval "$(hub alias -s)"
alias y='yarn'

# volta stuff
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
