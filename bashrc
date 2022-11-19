# git completion
source ~/.git-completion.bash

# volta stuff
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# starship startup
eval "$(starship init bash)"
