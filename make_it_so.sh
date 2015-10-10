#!/bin/bash

apm stars --user domingusj --install;
mv ~/.tmux.conf ~/.tmux.bak;
ln -sn ~/projects/dotfiles/tmux/tmux.symlink ~/.tmux.conf;
mv ~/.vimrc ~/.vimrc.bak;
ln -sn ~/projects/dotfiles/vim/vimrc.symlink ~/.vimrc;
mkdir -p ~/.vim/colors;
cp ~/projects/dotfiles/vim/colors/solarized.vim ~/.vim/colors;
mv ~/.zshrc ~/.zshrc.bak;
ln -sn ~/projects/dotfiles/zsh/zshrc.symlink ~/.zshrc;
~/projects/dotfiles/osx/set-defaults.sh;
~/projects/dotfiles/homebrew/install.sh;
