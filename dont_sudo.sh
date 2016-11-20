#!/bin/bash
# make sure XCode is working first
sudo xcodebuild -license
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; # oh-my-zsh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" # Homebrew
brew update;
brew doctor;
brew tap caskroom/cask;
# brew packages
brew cask install google-chrome;
brew cask install google-play-music-desktop-player;
brew cask install virtualbox;
brew cask install iterm2;
brew cask install slack;
brew cask install dropbox;
brew cask install 1password;
brew tap ravenac95/sudolikeaboss;
brew install sudolikeaboss;
brew cask install flux;
brew cask install utc-menu-clock;
brew cask install spectacle;
brew cask install screenhero;
brew tap caskroom/fonts;
brew cask install font-inconsolata;
brew cask install docker;
bew cask install gpgtools;
# shell packages
brew install git;
brew install hub;
brew install tree;
brew install diff-so-fancy;
brew install gpg;
brew install git;
brew install wget;
brew install tmux;
brew install ncdu;
brew install transcrypt;
brew install reattach-to-user-namespace;
brew install homebrew/gui/meld;
brew install watch;
brew install jq;
# cloud tools
brew cask install google-cloud-sdk;
brew install awscli;
gcloud components install kubectl;
# Hashicorp
brew install ansible;
brew cask install vagrant;
brew install vagrant-completion;
brew cask install terraform;
brew install packer;
brew install packer-completion;
# languages
brew cask install puppet;
gem install puppet-lint;
brew install ruby;
gem install bundle;
brew install python;
brew install python3;
brew install npm;
brew install node;
brew install ruby;
\curl -sSL https://get.rvm.io | bash # RVM
mkdir ~/go;
brew install go;
# neovim
# export SED=$(which sed) - if there are problems installing neovim
brew install neovim/neovim/neovim;
mkdir -p ~/.config/nvim;
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sn ~/projects/dotfiles/vim/vimrc.symlink ~/.config/nvim/init.vim;
# atom config
brew cask install atom;
mkdir ~/.atom;
atom ~/;
apm stars --user domingusj --install;
apm disable wrap-guide;
mv ~/.atom/keymap.cson ~/.atom/keymap.cson.bak;
mv ~/.atom/config.cson ~/.atom/config.cson.bak;
ln -s ~/projects/dotfiles/atom/keymap.cson ~/.atom/keymap.cson;
ln -s ~/projects/dotfiles/atom/config.cson ~/.atom/config.cson;
exit 0;
