#!/bin/fish

fisher install jorgebucaran/nvm.fish
nvm install lts
set -U nvm_default_version v20.10.0

fisher install oh-my-fish/theme-bobthefish
