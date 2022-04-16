alias ls='exa'
alias l='exa -l'
alias la='exa -a'
alias lla='exa -la'
alias lt='exa --tree'
alias cdf="j"

alias pgit='history | grep git | peco'
alias pcat='ls | peco | xargs cat'
alias pvi='ls | peco | xargs nvim'

# alias cat="ccat"

pfvi () { pfind $1 nvim; }
pfecho () { pfind $1 echo; }
pfind () { find . -name $1 -print | peco | xargs $2; }
pgvi () { pgrep $1 $2 nvim; }
pgecho () { pgrep $1 $2 echo; }
pgrep () { find . -name $1 -exec grep -l $2 {} \;; }
