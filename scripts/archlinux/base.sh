#!/bin/bash -e

# Base development
sudo pacman -S base-devel --needed --noconfirm

# AUR Helper
git clone https://aur.archlinux.org/yay ~/yay
cd ~/yay
makepkg -si --noconfirm
rm ~/yay -rf

# Shell
yay -S fish fisher --noconfirm

# Utilities
yay -S eza bat ghq peco lazygit github-cli --noconfirm

# Process monitoring
yay -S htop nvtop --noconfirm

# Editor (clang is required by treesitter)
yay -S neovim fd ripgrep unzip clang --noconfirm

# Languages
## Rust
yay -S rustup --noconfirm
rustup default stable

## Node.js
yay -S npm yarn --noconfirm

## Deno
yay -S deno --noconfirm

## Python
yay -S python python-pip tk pyenv rye --noconfirm

## Go
yay -S go --noconfirm

# Link config files
DOTCONFDIR="${HOME}/dotfiles-linux/config"

ln -s "${DOTCONFDIR}/.gitconfig" "~/.gitconfig"
ln -s "${DOTCONFDIR}/.clang-format" "~/.clang-format"

mkdir -p "~/.config"
ln -s "${DOTCONFDIR}/fish" "~/.config/fish"

git clone https://github.com/SuperYuro/nvim ~/.config/nvim
