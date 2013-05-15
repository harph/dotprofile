hi clear
if exists("syntax_on")
    syntax reset
endif

set background=dark

hi Normal       guifg=#d7d7d7   guibg=#303030   ctermfg=188    ctermbg=236       gui=none      cterm=none

hi Comment      guifg=#808080   guibg=NONE      ctermfg=244    ctermbg=NONE      gui=none      cterm=none

hi Constant     guifg=#d7d7af   guibg=NONE      ctermfg=187    ctermbg=NONE      gui=none      cterm=none
hi BConstant    guifg=#d7d7af   guibg=NONE      ctermfg=187    ctermbg=NONE      gui=bold      cterm=bold

hi Identifier   guifg=#afd787   guibg=NONE      ctermfg=150    ctermbg=NONE      gui=none      cterm=none
hi BIdentifier  guifg=#afd787   guibg=NONE      ctermfg=150    ctermbg=NONE      gui=bold      cterm=bold

hi Statement    guifg=#87d7ff   guibg=NONE      ctermfg=117    ctermbg=NONE      gui=none      cterm=none
hi BStatement   guifg=#87d7ff   guibg=NONE      ctermfg=117    ctermbg=NONE      gui=bold      cterm=bold

hi PreProc      guifg=#87d7af   guibg=NONE      ctermfg=115    ctermbg=NONE      gui=none      cterm=none
hi BPreProc     guifg=#87d7af   guibg=NONE      ctermfg=115    ctermbg=NONE      gui=bold      cterm=bold

hi Type         guifg=#87d7d7   guibg=NONE      ctermfg=116    ctermbg=NONE      gui=none      cterm=none
hi BType        guifg=#87d7d7   guibg=NONE      ctermfg=116    ctermbg=NONE      gui=bold      cterm=bold

hi Special      guifg=#d7afd7   guibg=NONE      ctermfg=182    ctermbg=NONE      gui=none      cterm=none
hi BSpecial     guifg=#d7afd7   guibg=NONE      ctermfg=182    ctermbg=NONE      gui=bold      cterm=bold

" ## Text Markup ##
hi Underlined   guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=underline cterm=underline
hi Error        guifg=#ff8787   guibg=#870000   ctermfg=210    ctermbg=88        gui=none      cterm=none
hi Todo         guifg=#d7d75f   guibg=#5f5f00   ctermfg=185    ctermbg=58        gui=none      cterm=none
hi MatchParen   guifg=bg        guibg=#afd75f   ctermfg=bg     ctermbg=149       gui=none      cterm=bold
hi NonText      guifg=#5f5f87   guibg=NONE      ctermfg=60     ctermbg=NONE      gui=none      cterm=none
hi SpecialKey   guifg=#5f875f   guibg=NONE      ctermfg=65     ctermbg=NONE      gui=none      cterm=none
hi Title        guifg=#5fafd7   guibg=NONE      ctermfg=74     ctermbg=NONE      gui=bold      cterm=bold

" ## Text Selection ##
hi Cursor       guifg=bg        guibg=#87afd7   ctermfg=bg     ctermbg=110       gui=none      cterm=none
hi CursorIM     guifg=bg        guibg=#87afd7   ctermfg=bg     ctermbg=110       gui=none      cterm=none
hi CursorColumn guifg=NONE      guibg=#444444   ctermfg=NONE   ctermbg=238       gui=none      cterm=none
hi CursorLine   guifg=NONE      guibg=#005f5f   ctermfg=NONE   ctermbg=23       gui=none      cterm=none
hi Visual       guifg=NONE      guibg=#005f87   ctermfg=NONE   ctermbg=24        gui=none      cterm=none
hi VisualNOS    guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=underline cterm=underline
hi IncSearch    guifg=bg        guibg=#57d7d7   ctermfg=bg     ctermbg=80        gui=none      cterm=none
hi Search       guifg=bg        guibg=#d78700   ctermfg=bg     ctermbg=172       gui=none      cterm=none

" == UI ==
hi Pmenu        guifg=bg        guibg=#b2b2b2   ctermfg=bg     ctermbg=249       gui=none      cterm=none
hi PmenuSel     guifg=fg        guibg=#005f87   ctermfg=fg     ctermbg=24        gui=none      cterm=none
hi PmenuSbar    guifg=#b2b2b2   guibg=#d0d0d0   ctermfg=249    ctermbg=252       gui=none      cterm=none
hi PmenuThumb   guifg=fg        guibg=#808080   ctermfg=fg     ctermbg=244       gui=none      cterm=none
hi StatusLine   guifg=bg        guibg=#b2b2b2   ctermfg=bg     ctermbg=249       gui=bold      cterm=bold
hi StatusLineNC guifg=#444444   guibg=#b2b2b2   ctermfg=238    ctermbg=249       gui=none      cterm=none
hi TabLine      guifg=bg        guibg=#b2b2b2   ctermfg=bg     ctermbg=249       gui=none      cterm=none
hi TabLineFill  guifg=#444444   guibg=#b2b2b2   ctermfg=238    ctermbg=249       gui=none      cterm=none
hi TabLineSel   guifg=fg        guibg=#005f87   ctermfg=fg     ctermbg=24        gui=bold      cterm=bold
hi VertSplit    guifg=#626262   guibg=#b2b2b2   ctermfg=241    ctermbg=249       gui=none      cterm=none
hi Folded       guifg=#bcbcbc   guibg=#4e4e4e   ctermfg=250    ctermbg=239       gui=bold      cterm=none
hi FoldColumn   guifg=#bcbcbc   guibg=#4e4e4e   ctermfg=250    ctermbg=239       gui=bold      cterm=none

" ## Spelling ##
hi SpellBad     guisp=#d70000                   ctermfg=160    ctermbg=NONE      gui=undercurl cterm=underline
hi SpellCap     guisp=#00afd7                   ctermfg=38     ctermbg=NONE      gui=undercurl cterm=underline
hi SpellRare    guisp=#5faf00                   ctermfg=70     ctermbg=NONE      gui=undercurl cterm=underline
hi SpellLocal   guisp=#d7af00                   ctermfg=178    ctermbg=NONE      gui=undercurl cterm=underline

" ## Diff ##
hi DiffAdd      guifg=fg        guibg=#5f875f   ctermfg=fg     ctermbg=65        gui=none      cterm=none
hi DiffChange   guifg=fg        guibg=#87875f   ctermfg=fg     ctermbg=101       gui=none      cterm=none
hi DiffDelete   guifg=fg        guibg=#875f5f   ctermfg=fg     ctermbg=95        gui=none      cterm=none
hi DiffText     guifg=#ffff87   guibg=#87875f   ctermfg=228    ctermbg=101       gui=none      cterm=none

" ## Misc ##
hi Directory    guifg=#afd7af   guibg=NONE      ctermfg=151    ctermbg=NONE      gui=none      cterm=none
hi ErrorMsg     guifg=#ff5f5f   guibg=NONE      ctermfg=203    ctermbg=NONE      gui=none      cterm=none
hi SignColumn   guifg=#b2b2b2   guibg=#4e4e4e   ctermfg=249    ctermbg=239       gui=none      cterm=none
hi LineNr       guifg=#87005f   guibg=#b2b2b2   ctermfg=53    ctermbg=249       gui=none      cterm=none
hi CursorLineNr guifg=#626262   guibg=#444444   ctermfg=241    ctermbg=238       gui=none      cterm=none
hi MoreMsg      guifg=#5fd7d7   guibg=NONE      ctermfg=80     ctermbg=NONE      gui=none      cterm=none
hi ModeMsg      guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
hi Question     guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
hi WarningMsg   guifg=#d7875f   guibg=NONE      ctermfg=173    ctermbg=NONE      gui=none      cterm=none
hi WildMenu     guifg=fg        guibg=#005f87   ctermfg=fg     ctermbg=24        gui=none      cterm=none
hi ColorColumn  guifg=NONE      guibg=#87875f   ctermfg=NONE   ctermbg=14       gui=none      cterm=none
hi Ignore       guifg=bg                        ctermfg=bg


" ## Vimwiki Colors ##
hi link VimwikiHeader1 BIdentifier
hi link VimwikiHeader2 BPreProc
hi link VimwikiHeader3 BStatement
hi link VimwikiHeader4 BSpecial
hi link VimwikiHeader5 BConstant
hi link VimwikiHeader6 BType

" ## Tagbar Colors ##
hi link TagbarAccessPublic Constant
hi link TagbarAccessProtected Type
hi link TagbarAccessPrivate PreProc


" ## Python stuffs"
hi Number      ctermfg=32   ctermbg=NONE  cterm=NONE
hi Float       ctermfg=32   ctermbg=NONE  cterm=NONE
hi Statement   ctermfg=40   ctermbg=NONE  cterm=NONE
hi Function    ctermfg=39   ctermbg=NONE  cterm=BOLD
hi Conditional ctermfg=130  ctermbg=NONE  cterm=BOLD
hi Operator    ctermfg=130  ctermbg=NONE  cterm=NONE
hi Todo        ctermfg=160  ctermbg=NONE  cterm=bold
hi Comment     ctermfg=159  ctermbg=NONE  cterm=NONE
hi Special     ctermfg=160  ctermbg=NONE  cterm=NONE
hi String      ctermfg=180  ctermbg=NONE  cterm=NONE
hi Include     ctermfg=118  ctermbg=NONE  cterm=NONE
hi Error       ctermfg=88   ctermbg=172   cterm=bold
hi PreProc     ctermfg=81   ctermbg=NONE  cterm=NONE
hi Boolean     ctermfg=32   ctermbg=NONE  cterm=bold
hi Character   ctermfg=142  ctermbg=NONE  cterm=NONE
