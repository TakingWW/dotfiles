export PATH="$PATH:$HOME/.cargo/bin/:$HOME/.local/bin"

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{blue}(%F{red}%b%F{blue}) '

setopt PROMPT_SUBST
PROMPT='%F{white}[%F{green}@%F{blue}%c%F{white}] ${vcs_info_msg_0_}%F{red}»%f '

alias ls='ls --color=tty'

