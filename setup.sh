#!/bin/bash

# pyenv
curl https://pyenv.run | bash

# vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s $(pwd)/vim/vimrc.symlink ~/.vimrc

# symlink dotfiles
ln -s $(pwd)/ssh/config ~/.ssh/config
ln -s $(pwd)/git/.gitconfig.symlink ~/.gitconfig
mv ~/.zshrc ~/.zshrc.bak
ln -s $(pwd)/zsh/zshrc.symlink ~/.zshrc
ln -s $(pwd)/zsh/af-magic-short.zsh-theme ~/.oh-my-zsh/themes/af-magic-short.zsh-theme

# zsh / shell config
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
