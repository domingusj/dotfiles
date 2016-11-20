#!/bin/bash
# symlink dotfiles
mkdir ~/projects ~/ansible;
ln -sn ~/projects/dotfiles/ansible/ansible.cfg ~/ansible.cfg;
mkdir ~/.ssh;
ln -sn ~/projects/dotfiles/ssh/config ~/.ssh/config;
mv ~/.tmux.conf ~/.tmux.bak;
ln -sn ~/projects/dotfiles/tmux/tmux.symlink ~/.tmux.conf;
mv ~/.puppet-lint.rc ~/.puppet-lint.rc.bak;
ln -sn ~/projects/dotfiles/puppet/puppet-lint.rc.symlink ~/.puppet-lint.rc;
mv ~/.gitconfig ~/.gitconfig.bak;
ln -sn ~/projects/dotfiles/git/.gitconfig.symlink ~/.gitconfig;
mv ~/.zshrc ~/.zshrc.bak;
ln -sn ~/projects/dotfiles/zsh/zshrc.symlink ~/.zshrc;
ln -sn ~/projects/dotfiles/zsh/af-magic-short.zsh-theme ~/.oh-my-zsh/themes/af-magic-short.zsh-theme;
# zsh / shell config
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git;
touch ~/.hushlogin # disable iTerm login message
exit 0;
