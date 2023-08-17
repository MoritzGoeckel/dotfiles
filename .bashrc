# Format input line and show git branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}
export PS1="\t \[\033[32m\]\w\[\033[35m\]\$(parse_git_branch)\[\033[00m\] |> "

export TERM=xterm-256color

alias gitcred='git config credential.helper store'
alias gc='git commit -m '
alias ga='git add -A'
alias gs='git status'
alias gac='git add -A; git commit -m '
alias gl='git log --format=short'
alias gt='git log --graph --pretty=oneline --abbrev-commit'
alias lg='lazygit'

alias vi='nvim'
alias vim='nvim'
alias deprecated_vi='/usr/bin/vi'
alias deprecated_vim='/usr/bin/vim'

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
export SUDO_EDITOR=nvim

#export PATH="your-dir:$PATH"

alias show='vim - -R -m -M'

export HISTCONTROL=ignoredups
export HISTSIZE=10000

# DO NOT GIT. Custom to this machine
source /home/i508082/.HappyMake/etc/hminit.sh
alias cdtrees='cd /SAPDevelop/trees'
alias cdscripts='cd /SAPDevelop/scripts'
export PATH="/SAPDevelop/bin/maven/3.6.1/bin:$PATH"
export PATH="/SAPDevelop/bin/nodejs/10.15.0/bin:$PATH"
export PATH="/home/i508082/bin:$PATH"
export PYTHON2_EXE="/usr/bin/python2"
alias gitaddi='python /SAPDevelop/scripts/git_add_i.py'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"
