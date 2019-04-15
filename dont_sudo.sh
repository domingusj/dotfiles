#!/bin/bash
# make sure Xcode is working first
sudo xcodebuild -license
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" # Homebrew
brew update
brew doctor
brew install ansible

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" # oh-my-zsh

echo "Done installing, now run ansible to setup dotfiles"
