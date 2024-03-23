#!/bin/bash

sudo apt install -y tlp tlp-rdw acpi-call-dkms

sudo cp $HOME/dotfiles-linux/config/tlp/*.conf /etc/tlp.d/

sudo systemctl enable --now tlp
sudo tlp start
