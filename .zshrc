HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh_history"

export EDITOR="hx"
# path+=()

setopt extendedglob
setopt no_case_glob
setopt globdots

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' rehash true

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# alias ssh='TERM=xterm-color ssh'

# PROMPT='[%n@%F{red}%m%f %1~]%# '
PROMPT='%n@%F{magenta}%m%f %1~> '
