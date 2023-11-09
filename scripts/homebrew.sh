#!/bin/bash

# Install requirements
sudo apt install -y build-essential procps curl file git

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Configure binary path
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

# Fish shell
brew install fish fisher

# Rust
brew install rustup-init

# Command-line tools
brew install tmux lsd bat dust peco ripgrep

# Python
brew install openssl readline sqlite3 xz zlib tcl-tk
brew install pyenv rye

# Git
brew install ghq lazygit gh

# Node.js
brew install node yarn

# Deno
brew install deno

# Editor
brew install neovim
