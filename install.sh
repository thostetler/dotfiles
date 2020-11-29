!#/bin/bash

# install git-bash-prompt
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

echo WORKING DIR
pwd

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

echo SCRIPT PATH
echo $SCRIPTPATH

sudo unlink ~/.bashrc
ln -sv $SCRIPTPATH/.bashrc ~

source ~/.bashrc
