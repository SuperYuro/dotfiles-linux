#!/bin/bash -e

sudo pacman -Syyu --noconfirm

sudo pacman -S base-devel --noconfirm

# Install AUR helper
git clone https://aur.archlinux.org/yay ~/yay
cd ~/yay
makepkg -si --noconfirm
rm ~/yay -rf

# Shell
sudo pacman -S zsh peco --noconfirm

# Oh My Zsh
git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh $HOME/.oh-my-zsh

# Zsh plugins
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-completions $HOME/.oh-my-zsh/custom/plugins/zsh-completions
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k $HOME/.oh-my-zsh/custom/themes/powerlevel10k

# Base Development
sudo pacman -S curl tmux ripgrep wget unzip the_silver_searcher --noconfirm

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

# nvm
yay -S nvm --noconfirm
echo 'source "/usr/share/nvm/init-nvm.sh"' >> "$HOME/.init_nvm"
source "$HOME/.init_nvm"
nvm install --lts
nvm use --lts

# LaTeX
sudo pacman -S texlive-core texlive-langextra texlive-langjapanese --noconfirm
