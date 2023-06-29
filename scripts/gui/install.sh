#!/bin/bash -e

sudo pacman -S gnome-keyring alacritty xsel --noconfirm

# Japanese IME
yay -S fcitx5-mozc fcitx5-configtool --noconfirm
yay -S fcitx5-nord --noconfirm

# Browser
# sudo pacman -S firefox --noconfirm

# Mail
# sudo pacman -S thunderbird --noconfirm

# Office
sudo pacman -S libreoffice-fresh libreoffice-fresh-ja --noconfirm

# Font
sudo pacman -S \
    noto-fonts noto-fonts-extra noto-fonts-cjk noto-fonts-emoji \
    ttf-hack-nerd --noconfirm

# Theme
yay -S archlinux-wallpaper --noconfirm
