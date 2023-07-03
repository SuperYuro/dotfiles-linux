#!/bin/bash -e

sudo pacman -Syyu --noconfirm

sudo pacman -S base-devel --noconfirm

# Rust
sudo pacman -S rustup --noconfirm
rustup default stable

# Install AUR helper
git clone https://aur.archlinux.org/yay ~/yay
cd ~/yay
makepkg -si --noconfirm
rm ~/yay -rf

# Shell
sudo pacman -S fish fisher peco --noconfirm

# Base Development
yay -S curl ripgrep wget unzip the_silver_searcher --noconfirm

# Git
yay -S git ghq lazygit --noconfirm

# Tmux
yay -S tmux tmux-nord-theme --noconfirm

# C/C++
sudo pacman -S gcc gdb clang llvm --noconfirm

# Java
sudo pacman -S jdk-openjdk gradle --noconfirm

# Editor
sudo pacman -S neovim --noconfirm

# Python
sudo pacman -S python python-pip rye --noconfirm

# LaTeX
sudo pacman -S texlive texlive-lang --noconfirm
