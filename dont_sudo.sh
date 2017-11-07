#!/bin/bash
# make sure XCode is working first
sudo xcodebuild -license
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" # oh-my-zsh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" # Homebrew
brew update
brew doctor
brew tap caskroom/cask
# brew packages
brew cask install 1password
brew cask install docker
brew cask install dropbox
brew cask install flux
brew cask install google-chrome
brew cask install google-play-music-desktop-player
brew cask install gpgtools
brew cask install iterm2
brew cask install slack
brew cask install spectacle
brew cask install utc-menu-clock
brew cask install virtualbox
brew tap caskroom/fonts
brew cask install font-inconsolata
brew cask install visual-studio-code
# shell packages
brew install diff-so-fancy
brew install git
brew install gpg
brew install homebrew/gui/meld
brew install htop
brew install hub
brew install jq
brew install ncdu
brew install reattach-to-user-namespace
brew install tmux
brew install transcrypt
brew install tree
brew install vim
brew install watch
brew install wget
# cloud tools
brew install awscli
brew cask install google-cloud-sdk
brew install kubernetes-helm
gcloud components install kubectl
# Hashicorp
brew install ansible
brew cask install terraform
brew cask install vagrant
brew install vagrant-completion
brew install packer
brew install packer-completion
# languages
brew cask install puppet
brew install node
brew install npm
brew install python3
brew install python
brew install ruby
gem install bundle
gem install puppet-lint
\curl -sSL https://get.rvm.io | bash # RVM
mkdir ~/go
brew install go
# vim
mv ~/.vimrc ~/.vimrc.bak
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s ~/projects/dotfiles/vim/vimrc.symlink ~/.vimrc
echo "Done installing, now run ./symlink.sh to setup dotfiles"
exit 0
