#! /usr/bin/env bash

TMP=/home/tim/.home/tmp

echo "Installing base deps"
sudo apt update && sudo apt install -y vim terminator dconf-editor htop nvtomp

echo "Install pip"
wget --no-clobber -P $TMP https://bootstrap.pypa.io/get-pip.py
python3 "$TMP/get-pip.py"

echo "Installing more deps"
pip install mackup

echo "Installing pnpm"
curl -fsSL https://get.pnpm.io/install.sh | sh -

echo "installing audio switcher"
sudo apt-add-repository -y ppa:yktooo/ppa
sudo apt update
sudo apt install indicator-sound-switcher

echo "installing peek"
sudo add-apt-repository -y ppa:peek-developers/stable
sudo apt update
sudo apt install peek

./scripts/bash-git-prompt.sh
./scripts/docker.sh
./scripts/webi.sh
./scripts/neovim.sh
./scripts/wezterm.sh
