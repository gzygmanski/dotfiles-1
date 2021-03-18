#!/bin/sh

cd $HOME

## ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## packer
git clone https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

## tpm
cd $HOME
sudo rm -rf .tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

