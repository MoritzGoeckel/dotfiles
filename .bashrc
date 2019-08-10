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

# The calculator
alias calc='qalc'

# CPP ctags
alias ctagspp='ctags --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -R .'

alias ll='ls -a'
alias oo='xdg-open'
alias web='lynx'

" git config --global core.editor "vim"
