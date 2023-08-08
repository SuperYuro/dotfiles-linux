if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g theme_color_scheme dracula

set -g theme_display_git yes
set -g theme_display_git_default_branch yes

set -g theme_display_virtualenv yes
set -g theme_display_ruby yes
set -g theme_display_nord yes

set -g theme_display_user ssh
set -g theme_display_hostname ssh

set -g theme_show_exit_status yes

if type lsd >/dev/null 2>&1
    alias ls lsd
    alias lt 'lsd --tree'
else if type exa >/dev/null 2>&1
    alias ls exa
end

if type bat >/dev/null 2>&1
    alias cat bat
else if type batcat >/dev/null 2>&1
    alias cat batcat
end

alias l 'ls -1a'
alias ll 'ls -lh'
alias la 'ls -lha'

alias c cd
alias th touch
alias md mkdir

alias g git
alias v nvim
alias vt 'nvim -c :terminal'
alias tm tmux
alias dp 'docker compose'

alias psh 'poetry shell'
alias prt 'poetry run tmux'

if type acpi >/dev/null 2>&1
    alias bi 'acpi -bi'
end

if type xsel >/dev/null 2>&1
    alias copy 'xsel --input --clipboard'
end

if type nvim >/dev/null 2>&1
    set -Ux EDITOR nvim
end

if [ -f "/mnt/c/Users/SuperYuro/Appdata/Local/Programs/Microsoft VS Code/bin/code" ]
    alias code "/mnt/c/Users/SuperYuro/Appdata/Local/Programs/Microsoft\ VS\ Code/bin/code"
end

if [ -f "/mnt/c/Windows/explorer.exe" ]
    alias explorer "/mnt/c/Windows/explorer.exe"
end

if [ -f "/mnt/c/Windows/system32/clip.exe" ]
    alias clip "/mnt/c/Windows/system32/clip.exe"
end

alias rl 'exec fish'

alias ghl 'cd ~/Development/(ls ~/Development | peco)'
alias cv 'cd ~/Development'
alias lg lazygit

pyenv init - | source
