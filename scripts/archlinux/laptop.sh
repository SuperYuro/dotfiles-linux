#!/bin/bash -e

# Energy efficiency
yay -S tlp tlp-rdw acpi_call tpacpi-bat --noconfirm

# Show battery
yay -S acpi --noconfirm

# Screen brightness
yay -S brightnessctl --noconfirm

# Copy config files
DOTCONFDIR="${HOME}/dotfiles-linux/config"
sudo cp "${DOTCONFDIR}/tlp/*.conf" "/etc/tlp.d/"

sudo systemctl enable --now tlp
sudo tlp start
