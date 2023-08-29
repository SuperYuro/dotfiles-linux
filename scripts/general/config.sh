#!/bin/bash -e

DOTCONFIGDIR=${HOME}/dotfiles-linux/config
XDG_CONFIG_HOME=${HOME}/.config

link_file() {
    local filename=$1
    local path=$2
    local targetfile=${DOTCONFIGDIR}/${filename}

    if [[ -e "${path}/${filename}" ]]; then
        rm -rf "${path}/${filename}"
    fi

    ln -s "${targetfile}" "${path}/${filename}"
}

link_file ".gitconfig" "${HOME}"
link_file ".clang-format" "${HOME}"

link_file "tmux" "${XDG_CONFIG_HOME}"
link_file "fish" "${XDG_CONFIG_HOME}"

git clone https://github.com/SuperYuro/nvim ~/.config/nvim
