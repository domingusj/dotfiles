#!/bin/bash

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# pyenv
curl https://pyenv.run | bash

# rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s ~/projects/dotfiles/vim/vimrc.symlink ~/.vimrc

# symlink dotfiles
ln -s ~/projects/dotfiles/ssh/config ~/.ssh/config
ln -s ~/projects/dotfiles/git/.gitconfig.symlink ~/.gitconfig
mv ~/.zshrc ~/.zshrc.bak
ln -s ~/projects/dotfiles/zsh/zshrc.symlink ~/.zshrc
ln -s ~/projects/dotfiles/zsh/af-magic-short.zsh-theme ~/.oh-my-zsh/themes/af-magic-short.zsh-theme

# zsh / shell config
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

# vscode
echo "Setup Settings Sync for vscode and download https://gist.github.com/domingusj/5c569896ea3ffc78db3949b72e431231"
