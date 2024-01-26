#!/bin/bash

# Rust
sudo apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Update system
sudo apt update
sudo apt upgrade -y

# Base Development
sudo apt install -y build-essential git vim

# System utilities
sudo apt install -y tree curl

# Python
## System Python
sudo apt install -y python3 python3-pip python3-venv python-is-python3

## Get Pyenv
git clone https://github.com/pyenv/pyenv --depth=1 $HOME/.pyenv

## Pyenv build dependencies
sudo apt install -y libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

## rye
curl -sSf https://rye-up.com/get | RYE_INSTALL_OPTION="--yes" bash
source "$HOME/.rye/env"
mkdir -p ~/.local/share/bash-completion/completions
rye self completion > ~/.local/share/bash-completion/completions/rye.bash

# Ruby
## System ruby
sudo apt install -y ruby-full

## rbenv
git clone https://github.com/rbenv/rbenv.git --depth=1 ~/.rbenv

## ruby-build
git clone https://github.com/rbenv/ruby-build.git  "$(~/.rbenv/bin/rbenv root)"/plugins/ruby-build

## Ruby build dependencies
sudo apt install -y autoconf patch libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev

# Node.js
PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash'
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install node
nvm use node

npm i -g yarn

# Deno
curl -fsSL https://deno.land/x/install/install.sh | sh

# WSL Utility
sudo apt install -y gh wslu
