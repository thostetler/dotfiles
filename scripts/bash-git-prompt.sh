#! /usr/bin/env bash

DIR="$HOME/.bash-git-prompt"

if [ ! -d "$DIR" ]; then
    git clone https://github.com/magicmonty/bash-git-prompt.git "$DIR"
else
    pushd "$DIR" || exit
    git pull
    popd || exit
fi

cat << EOF >> "$HOME/.bashrc"
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Custom
GIT_PROMPT_PREFIX="("
GIT_PROMPT_SUFFIX=")"
GIT_PROMPT_START="[e[1;33m][u@h W[e[m]"
GIT_PROMPT_END="[e[1;33m]]\\\$[e[m] "
source $DIR/gitprompt.sh
EOF
