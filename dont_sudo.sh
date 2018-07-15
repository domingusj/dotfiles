#!/bin/bash
# make sure Xcode is working first
sudo xcodebuild -license
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" # Homebrew
brew update
brew doctor
brew tap caskroom/cask
brew tap homebrew/cask-versions
# brew packages
brew cask install 1password
brew cask install docker-edge
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
brew cask install gpg-suite
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
brew install lego
brew install sops
brew install shuttle
brew install kubeval
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
# languages
brew cask install puppet
brew install node
brew install npm
brew install python3
brew install python
brew install ruby
gem install bundle
gem install puppet-lint
mkdir ~/go
brew install go
brew install rbenv

echo "Done installing, now run ./symlink.sh to setup dotfiles"
