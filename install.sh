#!/bin/bash
mkdir ~/.zsh
curl -L git.io/antigen > ~/.zsh/antigen.zsh
source ~/.zsh/antigen.zsh
source ~/.zshrc
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
