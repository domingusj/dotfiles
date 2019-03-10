#!/bin/bash
# make sure Xcode is working first
sudo xcodebuild -license
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" # Homebrew
brew update
brew doctor
brew install ansible
echo "Done installing, now run ansible to setup dotfiles"
