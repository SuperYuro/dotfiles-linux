#!/bin/bash

sudo apt install -y tlp tlp-rdw tp-smapi-dkms acpi-call-dkms powertop

sudo cp $HOME/dotfiles-linux/config/tlp/*.conf /etc/tlp.d/

sudo systemctl enable --now tlp
sudo tlp start

sudo powertop --auto-tune
