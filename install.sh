#!/bin/bash

# install git aliases
curl -o ~/.config/gitalias.txt https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt

# install git completion
curl -o ~/.config/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

# install volta
curl https://get.volta.sh | bash
source ~/.bashrc

# install nodejs, npm, and yarn
volta install node@14 yarn

# install neovim
curl -o ~/nvim.deb -s https://github.com/neovim/neovim/releases/download/v0.8.1/nvim-linux64.deb
sudo dpkg --skip-same-version -i ~/nvim.deb
rm nvim.deb

# install lunarvim
LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

# install starship
curl -sS https://starship.rs/install.sh | sh

# install signal desktop
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

# install deps
apt update && apt install -y signal-desktop gh exa

