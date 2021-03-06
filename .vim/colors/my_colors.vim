set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

set t_Co=256
let g:colors_name = "my_colors"

"hi IncSearch -- no settings --
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
hi Title guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
"hi Folded -- no settings --
"hi PreCondit -- no settings --
"hi Include -- no settings --
"hi StatusLineNC -- no settings --
"hi CTagsMember -- no settings --
"hi NonText -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi ErrorMsg -- no settings --
"hi Ignore -- no settings --
"hi Conditional -- no settings --
"hi StorageClass -- no settings --
hi Normal guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi normal guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
"hi Label -- no settings --
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi Character -- no settings --
"hi CursorLine -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
"hi WarningMsg -- no settings --
"hi VisualNOS -- no settings --
"hi ModeMsg -- no settings --
"hi CursorColumn -- no settings --
"hi Define -- no settings --
"hi FoldColumn -- no settings --
"hi EnumerationName -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
"hi VertSplit -- no settings --
"hi Exception -- no settings --
"hi Keyword -- no settings --
"hi SpellLocal -- no settings --
"hi Error -- no settings --
"hi SpecialKey -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi Repeat -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Directory -- no settings --
"hi Structure -- no settings --
"hi Macro -- no settings --
"hi Underlined -- no settings --
"hi clear -- no settings --
"hi default -- no settings --
hi Typedef guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
hi DiffText guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=21 cterm=NONE
hi Debug guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Special guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi LineNr guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi StatusLine guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=255 cterm=NONE
hi PMenuSel guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=232 ctermbg=255 cterm=NONE

hi Search guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=16 ctermbg=82 cterm=bold

hi Delimiter guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Statement guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE

hi Todo guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=82 ctermbg=16 cterm=NONE

hi Comment guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
hi SpecialComment guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
hi comment guifg=NONE guibg=NONE guisp=NONE gui=italic ctermfg=102 ctermbg=NONE cterm=NONE

hi Float guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi Number guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE

hi String guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi perlspecialstring guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi stringdelimiter guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi string guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi phpstringdouble guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi javascriptstrings guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi htmlstring guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi phpstringsingle guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE

hi Boolean guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi Constant guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi rubyconstant guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi constant guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi pythonbuiltin guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE

hi PreProc guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=249 ctermbg=NONE cterm=NONE
hi pythonimport guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=249 ctermbg=NONE cterm=NONE

hi Operator guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi pythonoperator guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE

hi pythonbuiltinfunction guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi function guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Function guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE

hi pythonexception guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE

" Selection
hi Visual guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=16 ctermbg=255 cterm=bold

hi Union guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi DiffDelete guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=232 ctermbg=196 cterm=NONE
hi Type guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=16 ctermbg=82 cterm=NONE
hi Cursor guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=46 cterm=bold
hi PMenu guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=236 cterm=NONE
hi Tag guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi MatchParen guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=82 cterm=NONE
hi DiffAdd guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=232 ctermbg=46 cterm=NONE
hi TabLine guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=232 cterm=NONE
hi cursorim guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=46 cterm=NONE
hi mbenormal guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=187 ctermbg=237 cterm=NONE
hi doxygenspecial guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi doxygenparam guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi cformat guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi lcursor guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=23 cterm=NONE
hi doxygenspecialmultilinedesc guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=252 ctermbg=60 cterm=NONE
hi user2 guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=117 ctermbg=17 cterm=bold
hi user1 guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=48 ctermbg=60 cterm=NONE
hi doxygenspecialonelinedesc guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi pythonexclass guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi rubyregexp guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=162 ctermbg=NONE cterm=NONE
hi rubyinstancevariable guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi rubyclass guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=251 ctermbg=NONE cterm=NONE
hi identifier guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=183 ctermbg=NONE cterm=NONE
hi rubyregexpdelimiter guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=53 ctermbg=NONE cterm=NONE
hi rubyregexpspecial guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=126 ctermbg=NONE cterm=NONE
hi rubypredefinedidentifier guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=168 ctermbg=NONE cterm=NONE
hi directory guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi rubysymbol guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=114 ctermbg=NONE cterm=NONE
hi rubycontrol guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi rubyidentifier guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi condtional guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
hi htmlitalic guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=120 cterm=NONE
hi htmlboldunderlineitalic guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=152 ctermbg=NONE cterm=NONE
hi htmlbolditalic guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=152 cterm=NONE
hi htmlunderlineitalic guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
hi htmlbold guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=230 cterm=NONE
hi htmlboldunderline guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi htmlunderline guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=252 ctermbg=NONE cterm=NONE
hi htmltagname guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi menu guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=17 cterm=NONE
hi scrollbar guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=17 cterm=NONE
hi rubyescape guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=193 ctermbg=NONE cterm=NONE
hi mytaglistfilename guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=82 ctermbg=NONE cterm=NONE
hi rubypseudovariable guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=114 ctermbg=NONE cterm=NONE
hi rubyclassvariable guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi rubyinterpolation guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=193 ctermbg=NONE cterm=NONE
hi rubyoperator guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=44 ctermbg=NONE cterm=NONE
hi cterm guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi gui guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi htmllink guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=152 ctermbg=NONE cterm=NONE
