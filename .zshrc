#################
# AUTO COMPLETE #
#################
setopt globdots
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
autoload -Uz compinit && compinit


###################
# COLORS n PROMPT #
###################
setopt PROMPT_SUBST
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1] /p'
}
export PS1='%n@%m:%F{cyan}%3~%f %F{yellow}$(parse_git_branch)%f%% '
export CLICOLOR=1


###################
# VIM INTEGRATION #
###################
bindkey -v
export EDITOR='nvim'


###########
# ALIASES #
###########
alias ll="ls -la"
alias l="ls"

alias gl="git log"
alias glb="git log --oneline --graph --all"
alias gd="git diff"
alias gs="git status"
alias ga="git add ."
alias gc="git commit"
alias gpush="git push"
alias gpull="git pull"
alias gacp="git add . && git commit -m 'quick auto commit' && git push origin main"
alias gnb="git checkout -b"

alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'

alias caffeinate="caffeinate -i -s -d -m"
