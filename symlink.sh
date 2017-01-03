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
# atom
apm disable wrap-guide
mv ~/.atom/keymap.cson ~/.atom/keymap.cson.bak
mv ~/.atom/config.cson ~/.atom/config.cson.bak
ln -s ~/projects/dotfiles/atom/keymap.cson ~/.atom/keymap.cson
ln -s ~/projects/dotfiles/atom/config.cson ~/.atom/config.cson
touch ~/.hushlogin # disable iTerm login message
exit 0
