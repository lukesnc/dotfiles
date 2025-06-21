# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
setopt auto_menu menu_complete

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PROMPT='[%n@%F{red}%m%f %1~]%# '
