shopt -s autocd
shopt -s cdspell

# my new alias
alias open='xdg-open'
alias bashrc='vim ~/.bashrc'
alias ll='ls -alh'
alias la='ls -A'
alias l='ls -CFlh'
alias lsd="ls -alF | grep /$"
alias srcbash='source ~/.bashrc'
alias als='cat ~/.bash_aliases'

# git aliases
alias adda="git add -A"
alias pull="git pull origin master"
alias push="git push origin master"
alias commit='function _commit(){ git commit -m $1 ; };_commit'

# kitty
alias icat='kitty +kitten icat'

# aliases concerning command prompt
alias ls='ls --color=always'
