# dotfiles-linux

Config files for Linux

## Installation

### Install font

#### Windows

```PowerShell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
Invoke-RestMethod get.scoop.sh | Invoke-Expression
scoop install git sudo
scoop bucket add nerd-fonts
sudo scoop install -g hack-nf-mono
```

#### Arch Linux

Install `ttf-hack-nerd` from community repo.

```Bash
$ sudo pacman -S ttf-hack-nerd
```

#### Other distros

1. Download `Hack Nerd Font` from [nerdfonts.com](https://www.nerdfonts.com)
1. Extract downloaded zip file
1. Copy all `.ttf` files to `~/.local/share/fonts/Hack`
1. Run `fc-cache -v`
