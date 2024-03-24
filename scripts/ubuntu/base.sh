#!/bin/bash

# Disable sudo password
sudo sed -i "s|%sudo\tALL=(ALL:ALL) ALL|%sudo\tALL=(ALL:ALL) NOPASSWD:ALL|g" /etc/sudoers

# Update your system
sudo apt update
sudo apt upgrade -y

# Install gdebi - installer for .deb file
sudo apt install -y gdebi

if [ ! -d $HOME/.config ]; then
    mkdir $HOME/.config
fi

ln -s $HOME/dotfiles-linux/config/.gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles-linux/config/.clang-format $HOME/.clang-format
