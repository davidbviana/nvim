#!/bin/bash
sudo apt-get update && sudo apt-get install neovim
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim/autoload
cp plug.vim ~/.config/nvim/autoload/plug.vim
nvim +'PlugInstall --sync' +qa
