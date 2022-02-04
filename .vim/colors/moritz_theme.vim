hi clear

set background=dark

if exists("syntax_on")
    syntax reset
endif

if !has("gui_running") && &t_Co != 256
    finish
endif

let g:colors_name = "moritz_theme"

let s:text = ['#F8F8F2', 15]
"let s:text_bg = ['#000000', 0]
let s:generalBg = ['fg', 'none']

let s:white = ['#FFFFFF', 15]
let s:black = ['#000000', 0]

let s:greys = [['#BEBEBE', 250], ['#808080', 244], ['#696969', 242], ['#545454', 240], ['#343434', 236], ['#080808', 232]]
let s:grey = s:greys[1]

let s:red = ['#FF0033', 197]
let s:green = ['#008000', 2]
let s:orange = ['#FFB829', 214]

" Bright green
let s:lime = ['#AEEE00', 154]

" Blueish
let s:lilac = ['#AE81FF', 141]

" Blue
let s:frost = ['#2C89C7', 68]
let s:blue = ['#2C89C7', 6]

" Yellow
let s:yellow = ['#FFFC7F', 228]

" Dark red
let s:mordant = ['#AE0C00', 124]
let s:auburn = ['#7C0A02', 88]

" Light red
let s:brick = ['#CB4154', 167]

" Dark green
let s:moss = ['#004225', 22]

" pass empty string for defaults: guifg - fg, guibg - bg, gui - none, guisp - fg
function! s:Highlight(group_name, guifg, guibg, gui, guisp)
    if !empty(a:guifg)
        let guifg = a:guifg
    else
        let guifg = ['fg', 'fg']
    endif
    if !empty(a:guibg)
        let guibg = a:guibg
    else
        let guibg = s:generalBg
    endif
    if !empty(a:gui)
        let gui = a:gui
    else
        let gui = 'none'
    endif
    if !empty(a:guisp)
        let guisp = a:guisp
    else
        let guisp = ['fg', 'fg']
    endif

    if has("gui_running")
        exe 'hi ' . a:group_name . ' guifg=' . guifg[0] . ' guibg=' . guibg[0] . ' gui=' . gui . ' guisp=' . guisp[0]
    else
        exe 'hi ' . a:group_name . ' ctermfg=' . guifg[1] . ' ctermbg=' . guibg[1] . ' cterm=' . gui
    endif
endfunction

" Function without defaults.
function! s:HighlightX(group_name, guifg, guibg, gui, guisp)
    if empty(a:guifg) && empty(a:guibg) && empty(a:gui) && !has("gui_running")
        return
    endif

    let hi_str = 'hi ' . a:group_name

    if !empty(a:guifg)
        if has("gui_running")
            let hi_str = hi_str . ' guifg=' . a:guifg[0]
        else
            let hi_str = hi_str . ' ctermfg=' . a:guifg[1]
        endif
    endif

    if !empty(a:guibg)
        if has("gui_running")
            let hi_str = hi_str . ' guibg=' . a:guibg[0]
        else
            let hi_str = hi_str . ' ctermbg=' . a:guibg[1]
        endif
    endif

    if !empty(a:gui)
        if has("gui_running")
            let hi_str = hi_str . ' gui=' . a:gui
        else
            let hi_str = hi_str . ' cterm=' . a:gui
        endif
    endif

    if !empty(a:guisp) && has("gui_running")
        let hi_str = hi_str . ' guisp=' . a:guisp[0]
    endif

    exe hi_str
endfunction

call s:Highlight('TabLineFill', s:text, '', '', '')

call s:Highlight('Normal', s:text, '', '', '')

call s:Highlight('Statement',   s:white, '', '', '')
call s:Highlight('Keyword',     s:white, '', '', '')
call s:Highlight('Branching',   s:red, '', '', '')
call s:Highlight('Operator',    s:white, '', '', '')
call s:Highlight('Label',       s:white, '', '', '') " could be branching
call s:Highlight('Repeat',      s:white, '', '', '') " could be branching
call s:Highlight('StdCall',     s:white, '', '', '')
call s:Highlight('DerefAddr',   s:orange , '', '', '')
call s:Highlight('PtrRefType',  s:orange, '', '', '')


call s:Highlight('StdType',         s:grey, '', '', '')
call s:Highlight('StdNamespace',    s:grey, '', '', '')
call s:Highlight('Type',            s:grey, '', '', '')
call s:Highlight('StorageClass',    s:grey, '', '', '')
call s:Highlight('Structure',       s:grey, '', '', '')
call s:Highlight('TypeDef',         s:grey, '', '', '')

call s:Highlight('Exception',       s:white, '', '', '')
call s:Highlight('Include',         s:grey, '', '', '')

call s:Highlight('PreProc',         s:white, '', '', '')
call s:Highlight('Macro',           s:white, '', '', '')
call s:Highlight('Define',          s:white, '', '', '')
call s:Highlight('Delimiter',       s:white, '', '', '')
call s:Highlight('Ignore',          s:white, '', '', '')
call s:Highlight('PreCondit',       s:white, '', '', '')
call s:Highlight('Debug',           s:white, '', '', '')

call s:Highlight('Function',        s:white, '', '', '')
call s:Highlight('Identifier',      s:white, '', '', '')

call s:Highlight('Comment',         s:green, '', '', '')
call s:Highlight('CommentEmail',    s:green, '', '', '')
call s:Highlight('CommentUrl',      s:green, '', '', '')
call s:Highlight('SpecialComment',  s:green, '', '', '')
call s:Highlight('Todo',            s:orange,     '', '', '')

call s:Highlight('String',          s:grey, '', '', '')
call s:Highlight('SpecialKey',      s:grey, '', '', '')
call s:Highlight('Special',         s:grey, '', '', '')
call s:Highlight('SpecialChar',     s:grey, '', '', '')

call s:Highlight('Boolean',         s:grey, '', '', '')
call s:Highlight('Character',       s:grey, '', '', '')
call s:Highlight('Number',          s:grey, '', '', '')
call s:Highlight('Constant',        s:grey, '', '', '')
call s:Highlight('Float',           s:grey, '', '', '')

call s:Highlight('FoldColumn',      s:white, s:grey, '', '')
call s:Highlight('Folded',          s:white, s:grey, '', '')

call s:Highlight('MatchParen',      s:black, s:white, '', '')

call s:Highlight('LineNr',          s:grey, '', '', '')
call s:Highlight('NonText',         s:grey, '', '', '')
call s:HighlightX('CursorColumn',   '', s:grey, '', '')
call s:HighlightX('CursorLine',     s:white, '', '', '')
call s:HighlightX('CursorLineNr',   s:white, '', '', '')
call s:Highlight('SignColumn',      '', '', '', '')
call s:HighlightX('ColorColumn',    '', s:grey, '', '')

call s:Highlight('Error',           s:white, s:grey, '', '')
call s:Highlight('ErrorMsg',        s:white, '', '', '')
call s:Highlight('WarningMsg',      s:white, '', '', '')

call s:Highlight('Cursor',          s:grey, s:white, '', '')
call s:Highlight('vCursor',         s:grey, s:white, '', '')
call s:Highlight('iCursor',         s:grey, s:white, '', '')

call s:Highlight('StatusLine',      s:white, '', '', '')
call s:Highlight('StatusLineNC',    s:grey, '', '', '')
call s:Highlight('VertSplit',       s:grey, '', '', '')

call s:Highlight('ModeMsg',         s:white, '', '', '')

if has("spell")
    call s:HighlightX('SpellBad',    '', '', 'undercurl', s:mordant)
    call s:HighlightX('SpellCap',    '', '', 'undercurl', s:auburn)
    call s:HighlightX('SpellLocal',  '', '', 'undercurl', s:auburn)
    call s:HighlightX('SpellRare',   '', '', 'undercurl', s:white)
endif

call s:HighlightX('VisualNOS',      '', s:grey, '', '')
call s:HighlightX('Visual',         s:black, s:greys[0], '', '')
call s:Highlight('Search',          s:black, s:orange, '', '')
call s:Highlight('IncSearch',       s:black, s:orange, '', '')

call s:Highlight('Pmenu',           s:black, s:orange, '', '')
call s:Highlight('PmenuSel',        s:black, s:orange, '', '')
call s:Highlight('Pmenu',           s:black, s:grey, '', '')
call s:Highlight('Pmenu',           s:white, '', '', '')

call s:HighlightX('DiffDelete',     s:auburn, s:auburn, '', '')
call s:HighlightX('DiffText',       '', s:grey, '', '')
call s:HighlightX('DiffChange',     '', s:grey, '', '')
call s:HighlightX('DiffAdd',        '', s:moss, '', '')

call s:HighlightX('Underlined',     '', '', 'underline', '')

call s:Highlight('Directory',       s:white, '', '', '')
call s:Highlight('Question',        s:white, '', '', '')
call s:Highlight('MoreMsg',         s:white, '', '', '')

call s:Highlight('WildMenu',        s:black, s:white, '', '')

call s:Highlight('Title',           '', '', 'underline', '')

call s:HighlightX('Tag',            '', '', 'bold', '')

"*** PYTHON ***
call s:Highlight('pythonDecorator',     s:grey, '', '', '')
call s:Highlight('pythonException',     s:white, '', '', '')
call s:Highlight('pythonExceptions',    s:white, '', '', '')

"*** RUBY ***
call s:Highlight('rubyModule',            s:white, '', '', '')
call s:Highlight('rubyModuleNameTag',     s:text, '', '', '')
call s:Highlight('rubyPseudoVariable',    s:text, '', '', '')
call s:Highlight('rubyClass',             s:grey, '', '', '')
call s:Highlight('rubyClassNameTag',      s:orange, '', '', '')
call s:Highlight('rubyDefine',            s:grey, '', '', '')
call s:Highlight('rubyConstant',          s:text, '', '', '')
call s:Highlight('rubyStringDelimiter',   s:white, '', '', '')
call s:Highlight('rubyInterpolation',     s:white, '', '', '')
call s:Highlight('rubyInterpolationDelimiter',     s:white, '', '', '')

"*** JAVASCRIPT ***
call s:Highlight('javaScriptNull',        s:white, '', 'bold', '')
call s:Highlight('javaScriptNumber',      s:white, '', 'bold', '')
call s:Highlight('javaScriptFunction',    s:white, '', '', '')
call s:Highlight('javaScriptOperator',    s:white, '', 'bold', '')
call s:Highlight('javaScriptBraces',      s:white, '', '', '')
call s:Highlight('javaScriptIdentifier',  s:white, '', '', '')
call s:Highlight('javaScriptMember',      s:white, '', '', '')
call s:Highlight('javaScriptType',        s:white, '', '', '')

"*** CLOJURE ***
call s:Highlight('clojureDefine',         s:white, '', '', '')
call s:Highlight('clojureSpecial',        s:white, '', '', '')
call s:Highlight('clojureCond',           s:white, '', '', '')
call s:Highlight('clojureParen0',         s:white, '', '', '')
call s:Highlight('clojureMacro',          s:white, '', '', '')
call s:Highlight('clojureDispatch',       s:white, '', '', '')
call s:Highlight('clojureError',          s:black, s:red, '', '')

"*** SCALA ***
call s:Highlight('scalaClassName',        s:white, '', '', '')
call s:Highlight('scalaConstructor',      s:text, '', '', '')

"*** VIMSCRIPT ***
call s:Highlight('vimCommentTitle',       s:white, '', '', '')
call s:Highlight('vimParenSep',           s:text, '', '', '')
call s:Highlight('vimSep',                s:text, '', '', '')
call s:Highlight('vimOper',               s:text, '', '', '')

"*** XML ***
call s:Highlight('xmlProcessingDelim',       s:white, '', '', '')
call s:Highlight('xmlNamespace',             s:white, '', '', '')
call s:Highlight('xmlTag',                   s:white, '', '', '')
call s:Highlight('xmlTagName',               s:white, '', '', '')
call s:Highlight('xmlEndTag',                s:white, '', '', '')
call s:Highlight('xmlAttrib',                s:white, '', '', '')
call s:Highlight('xmlAttribPunct',           s:white, '', '', '')
call s:Highlight('xmlEntity',                s:white, '', 'bold', '')
call s:Highlight('xmlEntityPunct',           s:white, '', '', '')

"*** HTML ***
call s:Highlight('htmlTagName',              s:white, '', '', '')
call s:Highlight('htmlTag',                  s:white, '', '', '')
call s:Highlight('htmlTagN',                 s:white, '', '', '')
call s:Highlight('htmlEvent',                s:white, '', '', '')
call s:Highlight('htmlEventDQ',              s:white, '', '', '')
call s:Highlight('htmlH1',                   '', '', '', '')
call s:Highlight('htmlH2',                   '', '', '', '')
call s:Highlight('htmlH3',                   '', '', '', '')
call s:Highlight('htmlH4',                   '', '', '', '')
call s:Highlight('htmlScriptTag',            s:white, '', '', '')

"*** HTML/JAVASCRIPT ***
call s:Highlight('javaScript',               s:text, '', '', '')

"*** CSS ***
call s:Highlight('cssSelectorOp',            s:white, '', '', '')
call s:Highlight('cssSelectorOp2',           s:white, '', '', '')
call s:Highlight('cssBraces',                s:text, '', '', '')
call s:Highlight('cssPseudoClass',           s:text, '', '', '')
call s:Highlight('cssValueNumber',           s:text, '', '', '')
call s:Highlight('cssValueLength',           s:text, '', '', '')
call s:Highlight('cssColor',                 s:text, '', '', '')
call s:Highlight('cssImportant',             s:text, '', '', '')
call s:Highlight('cssCommonAttr',            s:text, '', '', '')
call s:Highlight('cssRenderAttr',            s:text, '', '', '')
call s:Highlight('cssBoxAttr',               s:text, '', '', '')
call s:Highlight('cssUIAttr',                s:text, '', '', '')
call s:Highlight('cssTextAttr',              s:text, '', '', '')
call s:Highlight('cssTableAttr',             s:text, '', '', '')
call s:Highlight('cssColorAttr',             s:text, '', '', '')

"*** minibufexpl ***
call s:Highlight('MBENormal',                 s:grey, '', '', '')
call s:Highlight('MBEVisibleNormal',          s:white, '', '', '')
call s:Highlight('MBEVisibleActive',          s:white, '', '', '')
call s:Highlight('MBEChanged',                s:grey, '', '', '')
call s:Highlight('MBEVisibleChanged',         s:white, '', '', '')
call s:Highlight('MBEVisibleChangedActive',   s:white, '', '', '')

"*** vim-easymotion ***
call s:Highlight('EasyMotionTarget',          s:orange, '', '', '')
call s:Highlight('EasyMotionShade',           s:grey, '', '', '')

"*** CtrlP ***
call s:Highlight('CtrlPNoEntries',            s:mordant, '', '', '')
call s:Highlight('CtrlPPrtBase',              '', '', '', '')

"*** taglist.vim ***
call s:Highlight('TagListTitle',              s:white, '', '', '')
call s:Highlight('TagListFileName',           s:white, '', '', '')

"*** YouCompleteMe ***
call s:Highlight('YcmErrorSection',           s:grey, s:mordant, '', '')
