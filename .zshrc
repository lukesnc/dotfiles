# Lines configured by zsh-newuser-install
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh_history"
HISTSIZE=1000
SAVEHIST=1000
HISTCONTROL=ignoreboth
setopt autocd extendedglob
setopt no_case_glob

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PROMPT='[%n@%F{red}%m%f %1~]%# '
# YUKI. N>
PROMPT='%n@%F{magenta}%m%f %1~> '
