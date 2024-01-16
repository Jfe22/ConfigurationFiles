#################
# AUTO COMPLETE #
#################
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
autoload -Uz compinit && compinit

###################
# COLORS n PROMPT #
###################
export CLICOLOR=1
export PS1='%n@%m:%F{cyan}%3~%f %% '
export EDITOR='nvim'

###########
# ALIASES #
###########
alias ll="ls -la"
alias l="ls"
