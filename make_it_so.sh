#!/bin/bash

apm stars --user domingusj --install;
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git;
brew update;
brew install tmux;
brew tap ravenac95/sudolikeaboss;
brew install sudolikeaboss;
mv ~/.tmux.conf ~/.tmux.bak;
-ln -sn ~/projects/dotfiles/tmux/tmux.symlink ~/.tmux.conf;
mv ~/.vimrc ~/.vimrc.bak;
ln -sn ~/projects/dotfiles/vim/vimrc.symlink ~/.vimrc;
mkdir -p ~/.vim/colors;
cp ~/projects/dotfiles/vim/colors/solarized.vim ~/.vim/colors;
mv ~/.zshrc ~/.zshrc.bak;
ln -sn ~/projects/dotfiles/zsh/zshrc.symlink ~/.zshrc;
ln -sn ~/projects/dotfiles/zsh/agnoster-short.zsh-theme ~/.oh-my-zsh/themes/agnoster-short.zsh-theme;
~/projects/dotfiles/osx/set-defaults.sh;
source ~/.zshrc;

