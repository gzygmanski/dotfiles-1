#!/bin/sh

MY_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

## Lib
sudo apt-get install \
	libxcb-xinerama0-dev \
	libxcb-icccm4-dev \
	libxcb-randr0-dev libxcb-util0-dev \
	libxcb-ewmh-dev libxcb-keysyms1-dev \
	libxcb-shape0-dev

## Standard
sudo apt-get install \
	python3-pip
	imagemagick \
	neovim \
	vim \
	tmux \
 	git \
	autocutsel \
	compton \
	feh \
	stow

## Pywall
sudo pip3 install pywal

## Source
sh $MY_DIR/source.sh

## Link
sh $MY_DIR/link.sh