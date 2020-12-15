#!/bin/bash

# install git-bash-prompt
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

# install doppler
(curl -Ls https://cli.doppler.com/install.sh || wget -qO- https://cli.doppler.com/install.sh) | sh

# install git aliases
curl -o ~/.gitalias.txt https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt

# install git completion
curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

# instal vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# git settings
git config --global user.email "6970899+thostetler@users.noreply.github.com"
git config --global user.name "Tim Hostetler"
git config --global user.username "thostetler"
git config --global core.editor vim
git config --global include.path ~/.gitalias.txt

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
