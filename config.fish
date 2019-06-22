# No welcome message from fish
set fish_greeting

# The calculator
alias calc='qalc'

alias gitcred='git config credential.helper store'
alias gitc='git commit -m '
alias gita='git add -A'
alias gitp='git push'
alias gits='git status'
alias gitac='git add -A; git commit -m '

function gitacp
     git add -A
     git commit -m $argv
     git push
end
alias gcp='gitacp'

alias ..="cd .."
