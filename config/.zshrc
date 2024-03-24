# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(sheldon source)"

alias c=cd
alias th=touch
alias md=mkdir
alias g=git
alias v=nvim
alias vt='nvim -c :terminal'
alias tm=tmux
alias dp='docker compose'

if type acpi >/dev/null 2>&1; then
    alias bi='acpi -bi'
fi

if type nvim >/dev/null 2>&1; then
    export EDITOR=nvim
fi

if type eza >/dev/null 2>&1 ; then
    alias ls="eza --icons"
    alias lt="eza --icons --tree"
    alias ll="eza --icons -lh"
    alias la="eza --icons -lha"
    alias l="eza --icons -1A"
fi

if [ -d /mnt/c ]; then
    alias code="/mnt/c/Users/SuperYuro/Appdata/Local/Programs/Microsoft\ VS\ Code/bin/code"
    alias explorer="/mnt/c/Windows/explorer.exe"
    alias clip="/mnt/c/Windows/system32/clip.exe"
fi

if type bat >/dev/null 2>&1 ; then
    alias bat=cat
elif type batcat >/dev/null 2>&1 ; then
    alias batcat=cat
fi

# alias cv="cd $(ghq root)"
# alias ghl="cd $(ghq root)/$(ghq list | peco)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
