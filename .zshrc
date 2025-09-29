HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh_history"
setopt append_history inc_append_history hist_ignore_dups hist_ignore_space

# Env stuff
export EDITOR='hx'
# path+=()

setopt extendedglob
setopt globdots
setopt interactive_comments

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' rehash true

alias ll='ls -lh'
alias la='ls -lah'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
# alias ssh='TERM=xterm-256color ssh'

# PROMPT='[%n@%F{red}%m%f %1~]%# '
PROMPT='%n@%F{magenta}%m%f %1~> '
# PROMPT='[%F{green}%~%f][%F{yellow}%?%f]%% '
