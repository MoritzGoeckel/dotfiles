execute pathogen#infect()

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

" Searching case insensitive
set ignorecase

" Syntax highlighting
" set syntax
syntax on

"Enables cursor line position tracking
set cursorline
highlight clear CursorLine
highlight CursorLineNR ctermbg=green ctermfg=black

" Line numbering
set number
hi LineNr ctermbg=black ctermfg=white

" Cursor color: Does not work
"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue

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

" Open splits right
set splitright
set splitbelow

" Navigate in splits with ctrl+hjkl
" NOT ctrl+w ctrl+hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Go back when using *
" nnoremap * *``
nnoremap * m`:keepjumps normal! *``<cr>

" Show trailing whitespaces with formatting
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Show trailing whitespaces with signs
set list listchars=trail:·,tab:>>

map <silent> <C-o> :FSHere<CR>

"Make scrolling follow cursor
set so=999

" no underline in tabs
highlight TabLine cterm=None ctermfg=white ctermbg=black

" Filling after tabs
highlight TabLineFill ctermfg=black ctermbg=black

" Selected tab
highlight TabLineSel ctermfg=black ctermbg=grey

let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1 " Turn on case-insensitive feature

" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" MD
set foldlevel=20
let g:pandoc#spell#enabled = 0

" preventing the conceal feature
set conceallevel=0
set cole=0
au FileType * setl cole=0
