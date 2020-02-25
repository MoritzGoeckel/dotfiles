execute pathogen#infect()

"colo delek
"colo my_colors
"colo gruvbox
"colo badwolf
"colo jellybeans
"colo zenburn
"colo molokai
colo harlequin

set nocompatible

set path+=** " path contains all subdirs
set wildmenu " press tab when using :find to find fuzzy, use * and tab
             " or use :b and a substring

" ignore some folders for search
set wildignore+=**/node_modules/**
set wildignore+=**/.git/**

let g:netrw_banner=0    " disable banner
let g:netrw_liststyle=3 " tree style

set incsearch           " search before pressing enter
set display+=lastline   " show lines even if they dont fit screen

set formatoptions+=j    " remove comment char when joining lines

" Removes trailing spaces
function! TrimWhiteSpace()
   %s/\s*$//
   ''
endfunction

set laststatus=1

"scriptencoding utf-8
"set encoding=utf-8

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Show trailing whitespaces with signs
set list listchars=trail:·,tab:»»

" Searching case insensitive
set ignorecase

" Syntax highlighting
" set syntax
syntax on

" Line numbering
set number
hi LineNr ctermbg=NONE ctermfg=white

"Enables cursor line position tracking
set cursorline
highlight clear CursorLine
highlight CursorLine cterm=NONE
highlight CursorLineNR ctermbg=green ctermfg=black cterm=NONE

" No blinking of the cursor
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

set hlsearch
hi Search cterm=NONE ctermfg=black ctermbg=yellow
hi Visual cterm=NONE ctermfg=black ctermbg=green

hi DiffAdd      cterm=none    ctermfg=black     ctermbg=cyan
hi DiffChange   cterm=none    ctermfg=black     ctermbg=yellow
hi DiffDelete   cterm=none    ctermfg=black     ctermbg=red
hi DiffText     cterm=none    ctermfg=black     ctermbg=red

" R's gerrit like diff
"highlight DiffAdd      ctermfg=black   ctermbg=darkgreen
"highlight DiffDelete   ctermfg=darkred ctermbg=black
"highlight DiffChange   ctermfg=black   ctermbg=darkgrey
"highlight! link DiffChange Folded
"highlight DiffText     ctermfg=black   ctermbg=green

" Open splits right
set splitright
set splitbelow

" Go back when using *
" nnoremap * *``
nnoremap * m`:keepjumps normal! *``<cr>

" Show trailing whitespaces with formatting
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

map <silent> <C-o> :FSHere<CR>

"Make scrolling follow cursor
set so=999

" no underline in tabs
highlight TabLine cterm=None ctermfg=white ctermbg=NONE

" Filling after tabs
highlight TabLineFill ctermfg=black ctermbg=NONE

" Selected tab
highlight TabLineSel ctermfg=black ctermbg=green

let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1 " Turn on case-insensitive feature

" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" MD
set foldlevel=20

" preventing the conceal feature
set conceallevel=0
set cole=0
au FileType * setl cole=0

" Use ctrl+hjkl to switch tmux and vim panes
