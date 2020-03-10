execute pathogen#infect()

"colo delek
"colo my_colors
"colo gruvbox
"colo badwolf
"colo jellybeans
"colo zenburn
"colo molokai
colo harlequin
"colo srcery

set nocompatible

"Autocomplete
set completeopt=longest,menu ",menuone
set complete=.,w "i=included files, t=tags, u=unloaded buffers, b=buffers, w=windows, .=buffer

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
hi LineNr ctermbg=NONE ctermfg=white cterm=NONE

"Enables cursor line position tracking
set cursorline
highlight clear CursorLine
highlight CursorLine   ctermbg=NONE  ctermfg=NONE  cterm=NONE
highlight CursorLineNR ctermbg=green ctermfg=black cterm=NONE

" No cursor blinking
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

set hlsearch
hi Search cterm=NONE ctermfg=black ctermbg=yellow
hi Visual cterm=NONE ctermfg=black ctermbg=green

hi DiffAdd      cterm=none    ctermfg=black     ctermbg=cyan
hi DiffDelete   cterm=none    ctermfg=black     ctermbg=red
hi DiffChange   cterm=none    ctermfg=black     ctermbg=yellow
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

" using ; because of remapping
map <silent> <C-o> ;FSHere<CR>

"Make scrolling follow cursor
set so=999

" no underline in tabs
highlight TabLine cterm=None ctermfg=white ctermbg=NONE

" Filling after tabs
highlight TabLineFill ctermfg=black ctermbg=NONE

" Selected tab
highlight TabLineSel ctermfg=black ctermbg=green

" Highlight Todos
highlight Todo ctermfg=yellow

" Highlight comments
highlight Comment ctermfg=darkgrey

let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1 " Turn on case-insensitive feature

" `s{char}{char}{label}`
nmap s <Plug>(easymotion-overwin-f2)

set foldlevel=20    " folds are open in the beginning
set fdm=indent      " folds are created by indents

" preventing the conceal feature
set conceallevel=0
set cole=0
au FileType * setl cole=0

" Use ctrl+hjkl to switch tmux and vim panes
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
"nnoremap <silent> <c-h> :TmuxNavigatePrevious<cr>

" map : to ; and vise versa to avoid some left shift'ing
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" leave insert mode with jj
:imap jj <Esc>

set wrap

" use ;FmtJSON to format file
com! FmtJSON %!python -m json.tool

" use ;FmtOneLine to bring all to one line
com! FmtOneLine %j

" use ;Erc and ;Src to edit Vimrc and source it
com! Erc edit ~/.vimrc
com! Src source ~/.vimrc

" use clang format on save
" let g:clang_format#command = 'path/to/clang_format'
let g:clang_format#auto_format = 1
