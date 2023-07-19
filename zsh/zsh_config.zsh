export PATH="$PATH:$HOME/.cargo/bin/:$HOME/.local/bin:$JAVA_HOME/bin:$M2_HOME/bin"
source $HOME/.local/vulkan/setup-env.sh

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{blue}(%F{red}%b%F{blue}) '

setopt PROMPT_SUBST
PROMPT='%F{white}%B[%F{green}@%b%F{blue}%c%F{white}%B] ${vcs_info_msg_0_}%b%F{red}»%f '
alias ls='ls --color=tty'

