#!/bin/bash -e

# Power efficiency
sudo pacman -S tlp tlp-rdw acpi acpi_call tpacpi-bat --noconfirm

sudo cp ~/dotfiles-linux/tlp/performance.conf /etc/tlp.d/
sudo cp ~/dotfiles-linux/tlp/battery-threshold.conf /etc/tlp.d/

sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket

sudo systemctl enable --now tlp.service
sudo tlp start

# Xorg
sudo pacman -S xorg-server xorg-apps xorg-xmodmap xorg-xinit --noconfirm

# Window manager
sudo pacman -S i3 --noconfirm

# Misc
sudo pacman -S rofi gvfs udisks2 fwupd network-manager-applet brightnessctl --noconfirm

# Audio
sudo pacman -S pulseaudio-alsa pavucontrol --noconfirm
