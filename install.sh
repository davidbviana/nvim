#!/bin/bash

sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get -y install neovim

temp_dir=$(mktemp -d)
git clone https://github.com/davidbviana/nvim.git "$temp_dir"
cd "$temp_dir"

mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim/autoload
cp autoload/plug.vim ~/.config/nvim/autoload/plug.vim
nvim +'PlugInstall --sync' +qa
