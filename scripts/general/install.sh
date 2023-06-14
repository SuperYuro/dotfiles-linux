#!/bin/bash -e

sudo pacman -Syyu --noconfirm

sudo pacman -S base-devel --noconfirm

# Install AUR helper
git clone https://aur.archlinux.org/yay ~/yay
cd ~/yay
makepkg -si --noconfirm
rm ~/yay -rf

# Shell
sudo pacman -S fish fisher --noconfirm

# Theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k $HOME/.oh-my-zsh/custom/themes/powerlevel10k

# Base Development
yay -S curl ripgrep wget unzip the_silver_searcher --noconfirm

# Git
yay -S git ghq lazygit

# Tmux
yay -S tmux tmux-nord-theme

# C/C++
sudo pacman -S gcc gdb clang llvm --noconfirm

# Rust
sudo pacman -S rustup --noconfirm
rustup default stable

# Java
sudo pacman -S jdk-openjdk gradle --noconfirm

# Editor
sudo pacman -S neovim --noconfirm

# Python
sudo pacman -S python python-pip rye --noconfirm

# LaTeX
sudo pacman -S texlive-core texlive-langextra texlive-langjapanese --noconfirm
