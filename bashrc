# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# git-bash-prompt config
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi

# git completion
source ~/.git-completion.bash

# aliases
eval "$(hub alias -s)"
alias y='yarn'

# environment
export DOPPLER_TOKEN=
