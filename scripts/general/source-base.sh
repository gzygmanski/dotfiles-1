#!/bin/sh

cd $HOME

## ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## paq
git clone https://github.com/savq/paq-nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/opt/paq-nvim

## tpm
cd $HOME
sudo rm -rf .tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

