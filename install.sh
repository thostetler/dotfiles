#!/bin/bash

# install git-bash-prompt
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

# install doppler
(curl -Ls https://cli.doppler.com/install.sh || wget -qO- https://cli.doppler.com/install.sh) | sh

# install git aliases
curl -o ~/.gitalias.txt https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt
git config --global include.path ~/.gitalias.txt

# install git completion
curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

# switch git editor to vim
git config --global core.editor vim

# install deps
apt update && apt install hub vim -y

# final linking of config files
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

echo SCRIPT PATH
echo $SCRIPTPATH

# remove old dotfiles
sudo rm -rf ~/.vim > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.bashrc > /dev/null 2>&1

# add links
ln -sv $SCRIPTPATH/bashrc ~/.bashrc
ln -sv $SCRIPTPATH/vimrc ~/.vimrc

source ~/.bashrc
