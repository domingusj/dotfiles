#!/bin/bash

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git;
brew update;
brew install git;
brew install wget;
brew install tmux;
brew cask install spotify;
brew cask install virtualbox;
brew cask install vagrant;
brew cask install iterm2;
brew tap ravenac95/sudolikeaboss;
brew install sudolikeaboss;
brew install hub;
brew cask install github;
brew install caskroom/cask/brew-cask;
brew cask install p4merge;
brew cask install google-chrome;
brew cask install dropbox;
brew cask install atom;
apm stars --user domingusj --install;
mv ~/.tmux.conf ~/.tmux.bak;
-ln -sn ~/projects/dotfiles/tmux/tmux.symlink ~/.tmux.conf;
mv ~/.vimrc ~/.vimrc.bak;
ln -sn ~/projects/dotfiles/vim/vimrc.symlink ~/.vimrc;
ln -sn ~/projects/dotfiles/git/.gitconfig.symlink ~/.gitconfig;
mkdir -p ~/.vim/colors;
cp ~/projects/dotfiles/vim/colors/solarized.vim ~/.vim/colors;
mv ~/.zshrc ~/.zshrc.bak;
ln -sn ~/projects/dotfiles/zsh/zshrc.symlink ~/.zshrc;
ln -sn ~/projects/dotfiles/zsh/agnoster-short.zsh-theme ~/.oh-my-zsh/themes/agnoster-short.zsh-theme;
#uncomment and only run this once
#~/projects/dotfiles/osx/set-defaults.sh;
source ~/.zshrc;
