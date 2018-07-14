#!/bin/bash
mkdir ~/projects ~/ansible ~/.ssh || true

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" # oh-my-zsh

# vim
mv ~/.vimrc ~/.vimrc.bak
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s ~/projects/dotfiles/vim/vimrc.symlink ~/.vimrc

# symlink dotfiles
ln -s ~/projects/dotfiles/ansible/ansible.cfg ~/ansible.cfg
ln -s ~/projects/dotfiles/ssh/config ~/.ssh/config
mv ~/.tmux.conf ~/.tmux.bak
ln -s ~/projects/dotfiles/tmux/tmux.symlink ~/.tmux.conf
mv ~/.puppet-lint.rc ~/.puppet-lint.rc.bak
ln -s ~/projects/dotfiles/puppet/puppet-lint.rc.symlink ~/.puppet-lint.rc
mv ~/.gitconfig ~/.gitconfig.bak
ln -s ~/projects/dotfiles/git/.gitconfig.symlink ~/.gitconfig
mv ~/.zshrc ~/.zshrc.bak
ln -s ~/projects/dotfiles/zsh/zshrc.symlink ~/.zshrc
ln -s ~/projects/dotfiles/zsh/af-magic-short.zsh-theme ~/.oh-my-zsh/themes/af-magic-short.zsh-theme

# zsh / shell config
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
touch ~/.hushlogin # disable iTerm login message

# vscode
echo "Setup Settings Sync for vscode and download https://gist.github.com/domingusj/5c569896ea3ffc78db3949b72e431231"
