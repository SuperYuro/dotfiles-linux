#!/bin/bash -e

DOTCONFIGDIR="~/dotfiles-linux/config"
XDG_CONFIG_HOME="${HOME}/.config"

link_file() {
    local targetfile=${DOTCONFIGDIR}/$1
    local path=$2
    local filename=$3

    if [[ -e "${path}/${filename}" ]]; then
        rm -rf "${path}/${filename}"
    fi

    ln -s "${targetfile}" "${path}/${filename}"
}

link_file ".xprofile" "${HOME}"

link_file "alacritty" "${XDG_CONFIG_HOME}"
