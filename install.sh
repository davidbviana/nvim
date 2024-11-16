#!/bin/bash

sudo mkdir /opt/nvim
wget https://github.com/neovim/neovim/releases/download/v0.10.2/nvim-linux64.tar.gz
tar xvzf nvim-linux64.tar.gz
sudo cp -R nvim-linux64/* /opt/nvim/
rm nvim-linux64.tar.gz
rm -rf nvim-linux64

temp_dir=$(mktemp -d)
git clone https://github.com/davidbviana/nvim.git "$temp_dir"
cd "$temp_dir"

mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim/autoload
cp autoload/plug.vim ~/.config/nvim/autoload/plug.vim
/opt/nvim/bin/nvim +'PlugInstall --sync' +qa

sudo echo 'export PATH="/opt/nvim/bin:$PATH"' >> ~/.bashrc
