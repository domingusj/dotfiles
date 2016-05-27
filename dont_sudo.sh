#!/bin/bash

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git;
brew update;
brew doctor;
brew tap caskroom/cask;
brew install tree;
brew install gpg;
brew install git;
brew install wget;
brew install tmux;
brew install ncdu;
brew cask install spotify;
brew cask install virtualbox;
brew cask install vlc;
brew cask install vagrant;
brew cask install iterm2;
brew tap ravenac95/sudolikeaboss;
brew install sudolikeaboss;
brew install hub;
brew cask install github;
brew cask install google-chrome;
brew cask install dropbox;
brew cask install 1password;
brew cask install slack;
brew cask install atom;
brew install homebrew/gui/meld;
brew install ruby;
brew install python;
brew install python3;
brew install go;
brew install neovim/neovim/neovim;
mkdir ~/go;
brew tap caskroom/fonts;
brew cask install font-inconsolata;
apm stars --user domingusj --install;
apm disable wrap-guide;
brew cask install flux;
brew cask install utc-menu-clock;
brew cask install spectacle;
brew cask install trailer;
brew cask install evernote;
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mv ~/.tmux.conf ~/.tmux.bak;
ln -sn ~/projects/dotfiles/tmux/tmux.symlink ~/.tmux.conf;
mv ~/.vimrc ~/.vimrc.bak;
ln -sn ~/projects/dotfiles/vim/vimrc.symlink ~/.vimrc;
ln -sn ~/projects/dotfiles/puppet/puppet-lint.rc.symlink ~/.puppet-lint.rc;
ln -sn ~/projects/dotfiles/git/.gitconfig.symlink ~/.gitconfig;
mkdir -p ~/.vim/colors;
mv ~/.zshrc ~/.zshrc.bak;
ln -sn ~/projects/dotfiles/zsh/zshrc.symlink ~/.zshrc;
ln -sn ~/projects/dotfiles/zsh/af-magic-short.zsh-theme ~/.oh-my-zsh/themes/af-magic-short.zsh-theme;
source ~/.zshrc;