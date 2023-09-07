if status is-interactive
    # Commands to run in interactive sessions can go here
end

# bobthefish prompt settings
set -g theme_color_scheme light

set -g theme_display_git yes
set -g theme_display_git_default_branch yes

set -g theme_display_virtualenv yes
set -g theme_display_ruby no
set -g theme_display_nord yes

set -g theme_display_user ssh
set -g theme_display_hostname ssh

set -g theme_show_exit_status yes

# Nightfox Color Palette
# Style: carbonfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/carbonfox/nightfox_fish.fish
set -l foreground f2f4f8
set -l selection 2a2a2a
set -l comment 6e6f70
set -l red ee5396
set -l orange 3ddbd9
set -l yellow 08bdba
set -l green 25be6a
set -l purple be95ff
set -l cyan 33b1ff
set -l pink ff7eb6

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment

# Alias settings
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
alias ll 'ls -lhg'
alias la 'ls -lhga'

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

if type ghq >/dev/null 2>&1
    alias ghl 'cd (ghq root)/(ghq list | peco)'
else
    alias ghl 'cd ~/Development/(ls ~/Development | peco)'
end

alias cv 'cd ~/Development'
alias lg lazygit

# pyenv init - | source
