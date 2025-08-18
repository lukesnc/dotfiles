# Lines configured by zsh-newuser-install
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh_history"
HISTSIZE=10000
SAVEHIST=10000
HISTCONTROL=ignoreboth
# setopt autocd
setopt extendedglob
setopt no_case_glob
setopt globdots

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ''

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PROMPT='[%n@%F{red}%m%f %1~]%# '
# YUKI. N>
PROMPT='%n@%F{magenta}%m%f %1~> '
