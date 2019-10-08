execute pathogen#infect()

" Removes trailing spaces
function! TrimWhiteSpace()
   %s/\s*$//
   ''
endfunction

function! s:doSettings()
    set laststatus=1

    "scriptencoding utf-8
    "set encoding=utf-8

    " firewatch color scheme
    colo my_colors

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

    " always keep 15 lines at top and bottom
    set so=15

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

    "set runtimepath^=~/.vim/bundle/ctrlp.vim
    "set runtimepath^=~/.vim/bundle/fugitive.vim
    "set runtimepath^=~/.vim/bundle/fswitch.vim

    let g:ctrlp_map = '<c-p>' " Open ctrlp, ctrl-o for open file
    let g:ctrlp_cmd = 'CtrlP'

    map <silent> <C-H> :FSHere<CR>

    "Make scrolling follow cursor
    set so=999

    " no underline in tabs
    highlight TabLine cterm=None ctermfg=white ctermbg=black

    " Filling where there are no tabs
    highlight TabLineFill ctermfg=black ctermbg=black

    " selected tab
    highlight TabLineSel ctermfg=black ctermbg=grey

    let g:EasyMotion_do_mapping = 0 " Disable default mappings
    let g:EasyMotion_smartcase = 1 " Turn on case-insensitive feature

    " `s{char}{char}{label}`
    " Need one more keystroke, but on average, it may be more comfortable.
    nmap s <Plug>(easymotion-overwin-f2)

    map <Leader>j <Plug>(easymotion-j)
    map <Leader>k <Plug>(easymotion-k)

    " Limelight settings
    " Color for cterm
    " let g:limelight_conceal_ctermfg = 'gray'
    let g:limelight_conceal_ctermfg = 240

    let g:limelight_default_coefficient = 0.5

    " Number of preceding/following paragraphs to include (default: 0)
    let g:limelight_paragraph_span = 1

    " Beginning/end of paragraph
    "   When there's no empty line between the paragraphs
    "   and each paragraph starts with indentation
    let g:limelight_bop = '^\s'
    let g:limelight_eop = '\ze\n^\s'

    " Highlighting priority (default: 10)
    "   Set it to -1 not to overrule hlsearch
    let g:limelight_priority = 10
    
    " MD
	 let g:vim_markdown_auto_insert_bullets = 0
	 let g:vim_markdown_new_list_item_indent = 0
	 let g:vim_markdown_folding_level = 6
	 set foldlevel=20
endfunction

function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  Limelight
endfunction

function! s:goyo_leave()
   if executable('tmux') && strlen($TMUX)
       silent !tmux set status on
       silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
   endif
   set showmode
   set showcmd
   Limelight!
   call s:doSettings()
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

call s:doSettings()
