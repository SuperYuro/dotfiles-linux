#!/bin/bash -e

# Window Manager
yay -S hyprland-git --noconfirm

# Statusbar
yay -S waybar --noconfirm

# App launcher
yay -S rofi-lbonn-wayland --noconfirm

# File manager
yay -S pcmanfm gvfs --noconfirm

# Themes
yay -S nwg-look arc-gtk-theme papirus-icon-theme --noconfirm

# Web browser
yay -S microsoft-edge-stable-bin google-chrome --noconfirm

# Chatting
yay -S slack-desktop discord --noconfirm

# Font
yay -S noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra --noconfirm
yay -S ttf-udev-gothic --noconfirm

# IME
yay -S fcitx5-im fcitx5-mozc --noconfirm

# Audio
yay -S pulseaudio-jack pamixer --noconfirm

# Link config files
DOTCONFDIR="${HOME}/dotfiles-linux/config"

ln -s "${DOTCONFDIR}/kitty" "~/.config/kitty"
ln -s "${DOTCONFDIR}/hypr" "~/.config/hypr"
ln -s "${DOTCONFDIR}/waybar" "~/.config/waybar"
