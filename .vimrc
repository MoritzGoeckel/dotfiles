execute pathogen#infect()

"scriptencoding utf-8
"set encoding=utf-8

colo two-firewatch

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Searching case insensitive
set ignorecase

" Line numbering
set number

" Syntax highlighting
" set syntax
syntax on

"Enables cursor line position tracking:
set cursorline
" Removes the underline causes by enabling cursorline:
highlight clear CursorLine
" Sets the line numbering to red background:
highlight CursorLineNR ctermbg=yellow ctermfg=black

" Cursor color: Does not work
"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue

" No blinking of the cursor
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

set hlsearch

" Open splits right
set splitright
set splitbelow

" Navigate in splits with ctrl+hjkl
" NOT ctrl+w ctrl+hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Show trailing whitespaces with formatting
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Show trailing whitespaces with signs
set list listchars=trail:·,tab:>>

" Removes trailing spaces
function! TrimWhiteSpace()
   %s/\s*$//
   ''
endfunction

"set runtimepath^=~/.vim/bundle/ctrlp.vim
"set runtimepath^=~/.vim/bundle/fugitive.vim
"set runtimepath^=~/.vim/bundle/fswitch.vim

let g:ctrlp_map = '<c-p>' " Open ctrlp, ctrl-o for open file
let g:ctrlp_cmd = 'CtrlP'

map <silent> <C-H> :FSHere<CR>

"Make scrolling follow cursor
set so=999
