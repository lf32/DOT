ZDOTDIR="$HOME"

typeset -U PATH path

path=(
"$path[@]"
"$HOME/.cargo/env"
)

export PATH
