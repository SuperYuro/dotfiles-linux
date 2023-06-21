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
sudo pacman -S zsh peco --noconfirm

# Shell plugins
git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh ~/.oh-my-zsh

git clone --depth=1 https://github.com/romkatv/powerlevel10k ~/.oh-my-zsh/custom/themes/powerlevel10k

git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

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
