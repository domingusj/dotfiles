#!/bin/bash

apm stars --user domingusj --install;
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
-mv ~/.tmux.conf ~/.tmux.bak;
-ln -sn ~/projects/dotfiles/tmux/tmux.symlink ~/.tmux.conf;
mv ~/.vimrc ~/.vimrc.bak;
ln -sn ~/projects/dotfiles/vim/vimrc.symlink ~/.vimrc;
mkdir -p ~/.vim/colors;
cp ~/projects/dotfiles/vim/colors/solarized.vim ~/.vim/colors;
mv ~/.zshrc ~/.zshrc.bak;
ln -sn ~/projects/dotfiles/zsh/zshrc.symlink ~/.zshrc;
cp ~/projects/dotfiles/zsh/agnoster-short.zsh-theme zshrc.symlink ~/.oh-my-zsh/themes/
~/projects/dotfiles/osx/set-defaults.sh;
