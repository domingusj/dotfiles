#!/bin/bash

# make sure XCode and git are working first
git
sudo xcodebuild -license
read -r -p "First, install XCode from the App Store and make sure git is installed and working. Ready to proceed?[y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update;
brew doctor;
brew tap caskroom/cask;
brew install git;
brew install hub;
brew cask install google-chrome;
brew install tree;
brew install gpg;
brew install git;
brew install wget;
brew install tmux;
brew install ncdu;
brew install transcrypt;
brew install reattach-to-user-namespace;
brew install ansible;
brew cask install spotify;
brew cask install virtualbox;
brew cask install vlc;
brew cask install vagrant;
brew cask install terraform;
brew install Caskroom/versions/iterm2-beta;
brew tap ravenac95/sudolikeaboss;
brew install sudolikeaboss;
brew cask install dropbox;
brew cask install 1password;
brew cask install slack;
brew cask install atom;
brew cask install tunnelblick;
brew cask install screenhero;
brew cask install puppet;
brew install homebrew/gui/meld;
brew install ruby;
brew install python;
brew install python3;
brew install go;
# export SED=$(which sed) - if there are problems installing neovim
brew install neovim/neovim/neovim;
brew cask install dockertoolbox;
brew install docker-compose;
mkdir ~/go;
brew tap caskroom/fonts;
brew cask install font-inconsolata;
apm stars --user domingusj --install;
apm disable wrap-guide;
brew cask install flux;
brew cask install utc-menu-clock;
brew cask install spectacle;
brew cask install trailer;
gem install puppet-lint;
mkdir ~/projects;
cd ~/projects && hub clone domingusj/dotfiles;
mv ~/.tmux.conf ~/.tmux.bak;
ln -sn ~/projects/dotfiles/tmux/tmux.symlink ~/.tmux.conf;
mv ~/.vimrc ~/.vimrc.bak;
mkdir ~/.config/nvim;
brew install neovim/neovim/neovim;
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim; # install vim-plug
ln -sn ~/projects/dotfiles/vim/vimrc.symlink ~/.config/nvim/init.vim;
mv ~/.puppet-lint.rc ~/.puppet-lint.rc.bak;
ln -sn ~/projects/dotfiles/puppet/puppet-lint.rc.symlink ~/.puppet-lint.rc;
mv ~/.gitconfig ~/.gitconfig.bak;
ln -sn ~/projects/dotfiles/git/.gitconfig.symlink ~/.gitconfig;
mv ~/.zshrc ~/.zshrc.bak;
ln -sn ~/projects/dotfiles/zsh/zshrc.symlink ~/.zshrc;
ln -sn ~/projects/dotfiles/zsh/af-magic-short.zsh-theme ~/.oh-my-zsh/themes/af-magic-short.zsh-theme;
ln -s ~/projects/dotfiles/iTerm/iTerm_ssh_profiles.zsh ~/.oh-my-zsh/custom/iTerm_ssh_profiles.zsh;
mv ~/.atom/keymap.cson ~/.atom/keymap.cson.bak;
mv ~/.atom/config.cson ~/.atom/config.cson.bak;
ln -s ~/projects/dotfiles/atom/keymap.cson ~/.atom/keymap.cson;
ln -s ~/projects/dotfiles/atom/config.cson ~/.atom/config.cson;
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git;
touch .hushlogin # disable login message
echo "now run \"chsh -s $(which zsh)\", setup your ssh keys, gpg keys, and have a nice day.;"
exit 0;
else
exit 1;
fi
