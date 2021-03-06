hi clear

set background=dark

if exists("syntax_on")
    syntax reset
endif

if !has("gui_running") && &t_Co != 256
    finish
endif

let g:colors_name = "myharlequin"

let s:text = ['#F8F8F2', 15]
let s:text_bg = ['#000000', 0]
"let s:text_bg = ['#1C1B1A', 234]

let s:white = ['#FFFFFF', 15]
let s:black = ['#000000', 0]
let s:greys = [['#BEBEBE', 250], ['#808080', 244], ['#696969', 242], ['#545454', 240], ['#343434', 236], ['#080808', 232]]

" Red
let s:cerise = ['#FF0033', 197]

" Bright green
let s:lime = ['#AEEE00', 154]

" Orange
let s:gold = ['#FFB829', 214]

" Light red
let s:brick = ['#CB4154', 167]

" Blueish
let s:lilac = ['#AE81FF', 141]

" Blue
let s:frost = ['#2C89C7', 68]
let s:blue = ['#2C89C7', 6]

" Yellow
let s:sunny = ['#FFFC7F', 228]

" Red
let s:mordant = ['#AE0C00', 124]

" Dark red
let s:auburn = ['#7C0A02', 88]

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
        let guibg = ['bg', 'bg']
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

call s:Highlight('Normal', s:text, s:text_bg, '', '')

call s:Highlight('Statement',   s:white, '', '', '')
call s:Highlight('Keyword',     s:white, '', '', '')
call s:Highlight('Conditional', s:cerise, '', '', '')
call s:Highlight('Operator',    s:white, '', '', '')
call s:Highlight('Label',       s:cerise, '', '', '')
call s:Highlight('Repeat',      s:cerise, '', '', '')

call s:Highlight('MyHl', s:cerise, '', '', '')

call s:Highlight('Type',            s:greys[1], '', '', '')
call s:Highlight('StorageClass',    s:greys[1], '', '', '')
call s:Highlight('Structure',       s:greys[1], '', '', '')
call s:Highlight('TypeDef',         s:greys[1], '', '', '')

call s:Highlight('Exception',       s:white, '', '', '')
call s:Highlight('Include',         s:greys[1], '', '', '')

call s:Highlight('PreProc',         s:white, '', '', '')
call s:Highlight('Macro',           s:white, '', '', '')
call s:Highlight('Define',          s:white, '', '', '')
call s:Highlight('Delimiter',       s:white, '', '', '')
call s:Highlight('Ignore',          s:white, '', '', '')
call s:Highlight('PreCondit',       s:white, '', '', '')
call s:Highlight('Debug',           s:white, '', '', '')

call s:Highlight('Function',        s:white, '', '', '')
call s:Highlight('Identifier',      s:white, '', '', '')

call s:Highlight('Comment',         s:greys[1], '', '', '')
call s:Highlight('CommentEmail',    s:greys[1], '', '', '')
call s:Highlight('CommentUrl',      s:greys[1], '', '', '')
call s:Highlight('SpecialComment',  s:greys[1], '', '', '')
call s:Highlight('Todo',            s:gold,     '', '', '')

call s:Highlight('String',          s:greys[1], '', '', '')
call s:Highlight('SpecialKey',      s:greys[1], '', '', '')
call s:Highlight('Special',         s:greys[1], '', '', '')
call s:Highlight('SpecialChar',     s:greys[1], '', '', '')

call s:Highlight('Boolean',         s:greys[1], '', '', '')
call s:Highlight('Character',       s:greys[1], '', '', '')
call s:Highlight('Number',          s:greys[1], '', '', '')
call s:Highlight('Constant',        s:greys[1], '', '', '')
call s:Highlight('Float',           s:greys[1], '', '', '')

call s:Highlight('FoldColumn',      s:white, s:greys[4], '', '')
call s:Highlight('Folded',          s:white, s:greys[4], '', '')

call s:Highlight('MatchParen',      s:black, s:white, '', '')

call s:Highlight('LineNr',          s:greys[2], '', '', '')
call s:Highlight('NonText',         s:greys[2], '', '', '')
call s:HighlightX('CursorColumn',   '', s:greys[5], '', '')
call s:HighlightX('CursorLine',     '', s:greys[5], '', '')
call s:Highlight('SignColumn',      '', s:greys[5], '', '')
call s:HighlightX('ColorColumn',    '', s:greys[5], '', '')

call s:Highlight('Error',           s:white, s:greys[5], '', '')
call s:Highlight('ErrorMsg',        s:white, '', '', '')
call s:Highlight('WarningMsg',      s:white, '', '', '')

call s:Highlight('Cursor',          s:greys[5], s:white, '', '')
call s:Highlight('vCursor',         s:greys[5], s:white, '', '')
call s:Highlight('iCursor',         s:greys[5], s:white, '', '')

call s:Highlight('StatusLine',      s:white, s:black, '', '')
call s:Highlight('StatusLineNC',    s:greys[1], s:greys[5], '', '')
call s:Highlight('VertSplit',       s:greys[1], s:greys[5], '', '')

call s:Highlight('ModeMsg',         s:white, '', '', '')

if has("spell")
    call s:HighlightX('SpellBad',    '', '', 'undercurl', s:mordant)
    call s:HighlightX('SpellCap',    '', '', 'undercurl', s:auburn)
    call s:HighlightX('SpellLocal',  '', '', 'undercurl', s:auburn)
    call s:HighlightX('SpellRare',   '', '', 'undercurl', s:white)
endif

call s:HighlightX('VisualNOS',      '', s:greys[4], '', '')
call s:HighlightX('Visual',         '', s:greys[4], '', '')
call s:Highlight('Search',          s:black, s:gold, '', '')
call s:Highlight('IncSearch',       s:black, s:gold, '', '')

call s:Highlight('Pmenu',           s:black, s:gold, '', '')
call s:Highlight('PmenuSel',        s:black, s:gold, '', '')
call s:Highlight('Pmenu',           s:black, s:greys[5], '', '')
call s:Highlight('Pmenu',           s:white, '', '', '')

call s:HighlightX('DiffDelete',     s:auburn, s:auburn, '', '')
call s:HighlightX('DiffText',       '', s:greys[3], '', '')
call s:HighlightX('DiffChange',     '', s:greys[4], '', '')
call s:HighlightX('DiffAdd',        '', s:moss, '', '')

call s:HighlightX('Underlined',     '', '', 'underline', '')

call s:Highlight('Directory',       s:white, '', '', '')
call s:Highlight('Question',        s:white, '', '', '')
call s:Highlight('MoreMsg',         s:white, '', '', '')

call s:Highlight('WildMenu',        s:black, s:white, '', '')

call s:Highlight('Title',           '', '', 'underline', '')

call s:HighlightX('Tag',            '', '', 'bold', '')

"*** PYTHON ***
call s:Highlight('pythonDecorator',     s:greys[1], '', '', '')
call s:Highlight('pythonException',     s:white, '', '', '')
call s:Highlight('pythonExceptions',    s:white, '', '', '')

"*** RUBY ***
call s:Highlight('rubyModule',            s:white, '', '', '')
call s:Highlight('rubyModuleNameTag',     s:text, '', '', '')
call s:Highlight('rubyPseudoVariable',    s:text, '', '', '')
call s:Highlight('rubyClass',             s:greys[1], '', '', '')
call s:Highlight('rubyClassNameTag',      s:gold, '', '', '')
call s:Highlight('rubyDefine',            s:greys[1], '', '', '')
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
call s:Highlight('clojureError',          s:black, s:cerise, '', '')

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
call s:Highlight('MBENormal',                 s:greys[1], '', '', '')
call s:Highlight('MBEVisibleNormal',          s:white, '', '', '')
call s:Highlight('MBEVisibleActive',          s:white, '', '', '')
call s:Highlight('MBEChanged',                s:greys[1], '', '', '')
call s:Highlight('MBEVisibleChanged',         s:white, '', '', '')
call s:Highlight('MBEVisibleChangedActive',   s:white, '', '', '')

"*** vim-easymotion ***
call s:Highlight('EasyMotionTarget',          s:gold, '', '', '')
call s:Highlight('EasyMotionShade',           s:greys[2], '', '', '')

"*** CtrlP ***
call s:Highlight('CtrlPNoEntries',            s:mordant, '', '', '')
call s:Highlight('CtrlPPrtBase',              '', '', '', '')

"*** taglist.vim ***
call s:Highlight('TagListTitle',              s:white, '', '', '')
call s:Highlight('TagListFileName',           s:white, '', '', '')

"*** YouCompleteMe ***
call s:Highlight('YcmErrorSection',           s:greys[5], s:mordant, '', '')
