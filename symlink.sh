#!/bin/bash
# symlink dotfiles
mkdir ~/projects ~/ansible
ln -s ~/projects/dotfiles/ansible/ansible.cfg ~/ansible.cfg
mkdir ~/.ssh
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
exit 0
