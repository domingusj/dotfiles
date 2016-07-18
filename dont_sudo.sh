#!/bin/bash

# make sure XCode and git are working first
git
sudo xcodebuild -license
read -r -p "First, install XCode from the App Store and make sure git is installed and working. Ready to proceed?[y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; # oh-my-zsh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" # Homebrew
brew update;
brew doctor;
brew tap caskroom/cask;
# brew packages
brew cask install google-chrome;
brew cask install spotify;
brew cask install virtualbox;
brew install Caskroom/versions/iterm2-beta;
brew cask install slack;
brew cask install dropbox;
brew cask install 1password;
brew tap ravenac95/sudolikeaboss;
brew install sudolikeaboss;
brew cask install flux;
brew cask install utc-menu-clock;
brew cask install spectacle;
brew cask install screenhero;
brew cask install dockertoolbox; # this will probably change names
brew install docker-compose;
brew tap caskroom/fonts;
brew cask install font-inconsolata;
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
# languages
brew install ansible;
brew cask install vagrant;
brew cask install terraform;
brew cask install puppet;
gem install puppet-lint;
brew install ruby;
gem install bundle;
brew install python;
brew install python3;
mkdir ~/go;
brew install go;
# neovim
# export SED=$(which sed) - if there are problems installing neovim
brew install neovim/neovim/neovim;
mkdir ~/.config/nvim;
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim; # install vim-plug
ln -sn ~/projects/dotfiles/vim/vimrc.symlink ~/.config/nvim/init.vim;
# atom config
brew cask install atom;
apm stars --user domingusj --install;
apm disable wrap-guide;
mv ~/.atom/keymap.cson ~/.atom/keymap.cson.bak;
mv ~/.atom/config.cson ~/.atom/config.cson.bak;
ln -s ~/projects/dotfiles/atom/keymap.cson ~/.atom/keymap.cson;
ln -s ~/projects/dotfiles/atom/config.cson ~/.atom/config.cson;
# symlink dotfiles
mkdir ~/projects;
cd ~/projects && hub clone domingusj/dotfiles;
mv ~/.tmux.conf ~/.tmux.bak;
ln -sn ~/projects/dotfiles/tmux/tmux.symlink ~/.tmux.conf;
mv ~/.puppet-lint.rc ~/.puppet-lint.rc.bak;
ln -sn ~/projects/dotfiles/puppet/puppet-lint.rc.symlink ~/.puppet-lint.rc;
mv ~/.gitconfig ~/.gitconfig.bak;
ln -sn ~/projects/dotfiles/git/.gitconfig.symlink ~/.gitconfig;
mv ~/.zshrc ~/.zshrc.bak;
ln -sn ~/projects/dotfiles/zsh/zshrc.symlink ~/.zshrc;
ln -sn ~/projects/dotfiles/zsh/af-magic-short.zsh-theme ~/.oh-my-zsh/themes/af-magic-short.zsh-theme;
ln -sn ~/projects/dotfiles/iTerm/iTerm_ssh_profiles.zsh ~/.oh-my-zsh/custom/iTerm_ssh_profiles.zsh;
# zsh / shell config
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git;
touch .hushlogin # disable login message
echo "now run \"chsh -s $(which zsh)\", setup your ssh keys, gpg keys, and have a nice day.";
exit 0;
else
echo "Ok, go set those up first and come back later";
exit 1;
fi
