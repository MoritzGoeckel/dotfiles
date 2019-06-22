alias gitcred='git config credential.helper store'
alias gitc='git commit -m '
alias gita='git add -A'
alias gitp='git push'
alias gits='git status'
alias gitac='git add -A; git commit -m '

gitacp() {
    git add -A
    git commit -m "$1"
    git push
}

alias gcp='gitacp'
alias ..="cd .."
