# git completion
source ~/.git-completion.bash

# starship startup
eval "$(starship init bash)"

# volta stuff
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
