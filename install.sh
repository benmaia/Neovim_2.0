#!/bin/bash

# Sudo Update && Upgrade
sudo apt update && sudo apt upgrade -y

# Install basic needs
sudo apt install git -y
sudo apt install curl -y
sudo apt install fd-find -y
sudo apt install gcc clang clangd -y
sudo apt install libcurl-dev libcurl4-openssl-dev libcurl4-nss-dev libcurl4-gnutls-dev -y

# Install most recent version NVIM
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update
sudo apt install neovim -y

# Install most recent version NodeJS && Yank
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt -y install nodejs
sudo apt -y install gcc g++ make
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn
yarn install
npm install tree-sitter-cli

# Install pip
sudo apt install python3.8-venv
sudo apt-get -y install python3-pip

# Install ripgrep
sudo apt install ripgrep -y

# Install Norminette
sudo apt-get install -y python3-launchpadlib
python3 -m pip install flake8
python3 -m pip install --upgrade pip setuptools

#Lazy Git
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

# Transfering my nvim config
cp -r /home/$(whoami)/Neovim_2.0/nvim /home/$(whoami)/.config

