# Vim

- Toggle comment    \ + ci | \ + cs
- Search files      ctrl + p
- Navigate          s + {2 letters}
- Switch to header  ctrl + o
- Git commands      :Gstatus, Gpush, Gcommit, Gblame, ...

Font: Source Code Pro Medium, PXPlus IBM BIOS Regular, PxPlus IBM VGA8 Regular

autocomplete ctrl+n
        next ctrl-n
        prev ctrl-p

use ctags -R .   find def ctrl [
                 go back with ctrl t

edit .           open file browser
             t   open file in tab
             v   open in split

ctrl+6        open last buffer
ctrl+hjkl     navigate splits in vim/tmux

# Install

ln -s dotfiles/.vimrc ~/.vimrc
ln -s dotfiles/.bashrc ~/.bashrc
ln -s dotfiles/.vim ~/.vim
ln -s dotfiles/.tmux.conf ~/.tmux.conf

git submodule init
git submodule update

sudo apt install clang-format

Remove some code from vim-mark plugin to fix some exceptions
