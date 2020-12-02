#!/bin/bash

# install git-bash-prompt
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

# install doppler
(curl -Ls https://cli.doppler.com/install.sh || wget -qO- https://cli.doppler.com/install.sh) | sh

# install git aliases
curl -O https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt ~/.gitalias.txt
git config --global include.path ~/.gitalias.txt

# install hub
apt update && apt install hub -y

# final linking of config files
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

echo SCRIPT PATH
echo $SCRIPTPATH

sudo unlink ~/.bashrc
ln -sv $SCRIPTPATH/.bashrc ~
sudo unlink ~/.vimrc
ln -sv $SCRIPTPATH/.vimrc ~

source ~/.bashrc
