# PROMPT
[ "$UID" -eq 0 ] && PROMPT="%B%F{red}[%F{#de0000}%n%F{magenta}:%F{yellow}%~%F{red}]$%f%b " || PROMPT="%B%F{cyan}[%F{blue}%n%F{magenta}:%F{yellow}%~%F{cyan}]$%f%b "

# autocomplete
autoload -Uz compinit
compinit

zstyle ':completion:*' menu select

# hist
HISTSIZE=
SAVEHIST=
HISTFILE=~/.cache/zsh/history

# export vi mode
bindkey -v

# alias
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias diff="diff --color=auto"
alias fhost="ip addr | grep inet; python -m http.server"
alias fuckd="sudo apt update && sudo apt upgrade -y"
alias fuckp="sudo pacman -Syu"
alias grep='grep --color=auto'
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias ipnet="ip a s | grep inet | awk '{ printf \"%s\n\", \$2 }'"
alias ip="ip --color=auto"
alias ls="ls -A --color=auto"
alias la="ls -A"
alias ll="ls -lh"
alias lw="ls -l | wc -l"
alias pc="ping gnu.org -c 3"
alias shred="shred -zu"
alias sxit="sxiv -t "

# enable hightlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export GPG_TTY=$(tty)
