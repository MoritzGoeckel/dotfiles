# Format input line and show git branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\t \u@\h \[\033[32m\]\w\[\033[35m\]\$(parse_git_branch)\[\033[00m\] $ "

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

alias ll='ls -Alhp --color --group-directories-first'
alias oo='xdg-open'
alias web='lynx'

git config --global core.editor 'vim'
export SUDO_EDITOR=vim

alias gitt='git log --graph --pretty=oneline --abbrev-commit'

#export PATH="your-dir:$PATH"

alias show='vim - -R -m -M'

export HISTCONTROL=ignoredups
export HISTSIZE=10000
