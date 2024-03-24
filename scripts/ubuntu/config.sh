#!/bin/bash

# Disable sudo password
sudo sed -i "s|%sudo\tALL=(ALL:ALL) ALL|%sudo\tALL=(ALL:ALL) NOPASSWD:ALL|g" /etc/sudoers

# Put config files
ln -s $HOME/dotfiles-linux/config/.gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles-linux/config/.clang-format $HOME/.clang-format
ln -s $HOME/dotfiles-linux/config/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles-linux/config/.bash_user_profile $HOME/.bash_user_profile
echo "source $HOME/.bash_user_profile" >> ~/.bashrc