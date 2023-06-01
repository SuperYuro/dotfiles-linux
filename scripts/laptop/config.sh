#!/bin/bash -e

DOTCONFIGDIR="~/dotfiles-linux/config"
XDG_CONFIG_HOME="${HOME}/.config"

link_file() {
    local filename=$1
    local path=$2
    local targetfile=${DOTCONFIGDIR}/${filename}

    if [[ -e "${path}/${filename}" ]]; then
        rm -rf "${path}/${filename}"
    fi

    ln -s "${targetfile}" "${path}/${filename}"
}

link_file ".xinitrc" "${HOME}"

link_file "i3" "${XDG_CONFIG_HOME}"
link_file "i3status" "${XDG_CONFIG_HOME}"
