#################
# AUTO COMPLETE #
#################
setopt globdots
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
autoload -Uz compinit && compinit


###################
# COLORS n PROMPT #
###################
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1] /p'
}
setopt PROMPT_SUBST
export PS1='%n@%m:%F{cyan}%3~%f %F{yellow}$(parse_git_branch)%f%% '
export CLICOLOR=1


###################
# VIM INTEGRATION #
###################
export EDITOR='nvim'
bindkey -v


###########
# ALIASES #
###########
alias ll="ls -la"
alias l="ls"
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
