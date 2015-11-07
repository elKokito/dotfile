" Settings
if !exists('g:kalisi_recolor_quickfixsigns')
  let g:kalisi_recolor_quickfixsigns = 1
endif
" the default scheme is 'light'
if &background == "dark"
  hi clear
  let g:colors_name = "kalisi"

  " Python (non-default syntax file)
  hi link pythonDocTest pythonDoctest
  hi link pythonDocTest2 pythonDoctest
  " C
  hi link cType Type
  " Embedded inside HTML <script>
  " htmldjango
  hi link djangoTagBlock DjangoBlock
  hi link djangoVarBlock DjangoBlock
  hi link djangoFilter   SpecialChar
  
  " mail
  hi link mailHeader  Comment
  hi link mailSubject	Constant
  hi link mailURL	    CommentURL
  hi link mailEmail   PreCondit
  hi link mailSignature Comment
  " Plugins ####################################################################
  
  " https://github.com/kien/ctrlp.vim
  " https://github.com/scrooloose/nerdtree
  hi link NERDTreeDirSlash NERDTreeDir
  hi link NERDTreeOpenable NERDTreeDir
  " https://github.com/majutsushi/tagbar
  hi link TagbarSignature Comment
  " https://github.com/justinmk/vim-sneak
  hi link SneakPluginScope Visual
  " https://github.com/rhysd/clever-f.vim
  " https://github.com/mhinz/vim-startify
  hi link StartifyFooter StartifyHeader
  " https://github.com/davidhalter/jedi-vim
  " https://github.com/tomtom/quickfixsigns_vim
  if g:kalisi_recolor_quickfixsigns == 1
     let g:quickfixsigns#marks#texthl = "QFSignsMark"
     let g:quickfixsigns#vcsdiff#highlight = {'DEL': 'QFSignsDiffDelete', 'ADD': 'QFSignsDiffAdd', 'CHANGE': 'QFSignsDiffChange'}
  endif
  " 256 Color Terminal (dark) ##################################################
  if &t_Co > 255
    hi CursorLine ctermbg=239 term=none cterm=none
    hi NonText ctermfg=102
    hi Conceal ctermbg=237 ctermfg=230
    hi Comment ctermfg=245
    hi CommentURL cterm=underline ctermfg=68
    hi CommentEmail cterm=underline ctermfg=68
    hi Constant cterm=bold ctermfg=214
    hi String ctermfg=220
    hi Character ctermfg=171
    hi Number ctermfg=214
    hi Boolean ctermfg=149
    hi Float ctermfg=227
    hi Identifier ctermfg=37 cterm=none
    hi Function ctermfg=117
    hi Statement cterm=bold ctermfg=149
    hi Conditional cterm=bold ctermfg=110
    hi Repeat cterm=bold ctermfg=110
    hi Label cterm=bold ctermfg=35
    hi Operator ctermfg=67
    hi Keyword ctermfg=158
    hi Exception cterm=bold ctermfg=32
    hi PreProc cterm=bold ctermfg=33
    hi Include cterm=bold ctermfg=33
    hi Define cterm=bold ctermfg=33
    hi Macro ctermfg=140
    hi PreCondit ctermfg=110
    hi Type ctermfg=67
    hi StorageClass ctermfg=71 cterm=none
    hi Structure ctermfg=67
    hi Typedef ctermfg=72
    hi Special ctermfg=194 cterm=none
    hi SpecialChar ctermfg=69 cterm=none
    hi Tag cterm=bold ctermfg=39
    hi Delimiter ctermfg=104
    hi SpecialComment cterm=bold ctermfg=67
    hi Debug cterm=bold ctermfg=184
    hi Underlined cterm=underline ctermfg=249
    hi Todo cterm=bold ctermbg=94 ctermfg=227
    hi Directory cterm=bold ctermfg=252
    hi DiffAdd ctermbg=22
    hi DiffChange ctermbg=239
    hi DiffText cterm=bold ctermbg=18 ctermfg=254
    hi DiffDelete cterm=none ctermbg=237 ctermfg=238
    hi SpellBad cterm=undercurl ctermfg=203 ctermbg=none
    hi SpellCap cterm=undercurl ctermfg=33 ctermbg=none
    hi SpellLocal cterm=undercurl ctermfg=51 ctermbg=none
    hi SpellRare cterm=undercurl ctermfg=205 ctermbg=none
    hi Search cterm=bold ctermbg=148 ctermfg=16
    hi IncSearch cterm=reverse ctermbg=16 ctermfg=220
    hi Error cterm=underline ctermbg=52 ctermfg=217
    hi ErrorMsg cterm=bold ctermbg=88 ctermfg=224
    hi WarningMsg ctermfg=221
    hi WildMenu ctermbg=148 ctermfg=16
    hi Question ctermbg=148 ctermfg=16
    hi MoreMsg ctermbg=148 ctermfg=16
    hi ModeMsg cterm=bold ctermbg=148 ctermfg=16
    hi Cursor ctermbg=160 ctermfg=231
    "hi CursorLineNr cterm=bold ctermbg=52 ctermfg=252
    hi CursorLineNr cterm=bold ctermfg=124 ctermbg=237
    hi MatchParen ctermbg=112 ctermfg=234
    hi Visual ctermbg=24
    hi VisualNOS ctermbg=239
    hi Pmenu ctermbg=236 ctermfg=249
    hi PmenuSel ctermbg=148 ctermfg=235
    hi PmenuSbar ctermbg=247
    hi PmenuThumb ctermbg=240
    hi SignColumn ctermbg=236 ctermfg=148
    hi FoldColumn cterm=bold ctermbg=236 ctermfg=145
    hi Folded ctermbg=236 ctermfg=243
    hi LineNr ctermbg=236 ctermfg=244
    hi StatusLine ctermbg=1 ctermfg=230 term=NONE cterm=NONE
    hi StatusLineNC ctermbg=236 ctermfg=244 term=NONE cterm=NONE
    hi VertSplit ctermbg=235 ctermfg=234
    hi Title cterm=bold ctermfg=252
    hi TabLine ctermbg=234 ctermfg=34 cterm=none
    hi TabLineSel ctermbg=253 ctermfg=233 cterm=bold
    hi TabLineFill ctermbg=247 ctermfg=236 cterm=none
    hi PythonOperator ctermfg=110
    hi pythonDocstring ctermfg=67
    hi pythonDoctest ctermfg=97
    hi javaScript ctermfg=151
    hi DjangoBlock ctermfg=35 cterm=none
    hi CtrlPMatch ctermbg=220 ctermfg=16
    " for the reason behind this, see
    " https://github.com/tomasr/molokai/issues/22
    set background=dark
  endif
else
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Light
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  hi clear
  let g:colors_name = "kalisi"
  " Syntax ####################################################################
  " Misc syntax ###############################################################
  "
 
  " html: special keywords in jscript: window log 
 
  " User interface ############################################################
  " Language Specific ##########################################################
  
  " Python (non-default syntax file)
  hi link pythonDocTest pythonDoctest
  hi link pythonDocTest2 pythonDoctest
  " C
  hi link javaType cType
  hi link TexType Function
  " Embedded inside HTML <script>
  " htmldjango
  hi link djangoTagBlock DjangoBlock
  hi link djangoVarBlock DjangoBlock
  hi link djangoFilter   Typedef
  hi link mailHeader  Comment
  hi link mailSubject	Constant
  hi link mailURL	    CommentURL
  hi link mailEmail   Identifier
  " Plugins ####################################################################
  
  " https://github.com/kien/ctrlp.vim
  hi link CtrlPMatch    Search
 
  " https://github.com/scrooloose/nerdtree
  hi link NERDTreeDirSlash NERDTreeDir
  hi link NERDTreeOpenable NERDTreeDir
  " https://github.com/majutsushi/tagbar
  hi link TagbarSignature Comment
  
  " https://github.com/justinmk/vim-sneak
  hi link SneakPluginScope Visual
  " https://github.com/rhysd/clever-f.vim
  " https://github.com/mhinz/vim-startify
  hi link StartifyFooter StartifyHeader
  " https://github.com/davidhalter/jedi-vim
  
  " https://github.com/tomtom/quickfixsigns_vim
  if g:kalisi_recolor_quickfixsigns == 1
       let g:quickfixsigns#marks#texthl = "QFSignsMark"
       let g:quickfixsigns#vcsdiff#highlight = {'DEL': 'QFSignsDiffDelete', 'ADD': 'QFSignsDiffAdd', 'CHANGE': 'QFSignsDiffChange'}
  endif
  " 256 Color Terminal (light) ################################################
  if &t_Co > 255
    hi Normal ctermbg=255 ctermfg=16
    hi Comment ctermfg=110
    hi CommentURL cterm=underline ctermfg=75
    hi CommentEmail cterm=underline ctermfg=75
    hi SpecialComment cterm=bold ctermfg=67
    hi Constant cterm=bold ctermfg=19
    hi String ctermfg=24
    hi Character ctermfg=98 cterm=bold
    hi Number ctermfg=25
    hi Boolean ctermfg=70
    hi Float ctermfg=36
    hi Identifier ctermfg=18
    hi Function ctermfg=32
    hi Statement cterm=bold ctermfg=70
    hi Conditional cterm=bold ctermfg=32
    hi Repeat cterm=bold ctermfg=32
    hi Label cterm=bold ctermfg=28
    hi Operator ctermfg=25
    hi Exception cterm=bold ctermfg=24
    hi PreProc cterm=bold ctermfg=161
    hi Include cterm=bold ctermfg=161
    hi Define ctermfg=161
    hi Macro cterm=bold ctermfg=160
    hi PreCondit ctermfg=32
    hi Type ctermfg=202
    hi StorageClass cterm=none ctermfg=20
    hi Structure ctermfg=25
    hi Typedef ctermfg=25
    hi Special cterm=bold ctermfg=214
    hi SpecialChar cterm=bold ctermfg=197
    hi Tag cterm=bold ctermfg=21
    hi Delimiter ctermfg=161
    hi Debug cterm=bold ctermfg=178
    hi Underlined cterm=underline ctermfg=234
    hi Error cterm=underline ctermbg=252 ctermfg=160
    hi ErrorMsg cterm=bold ctermbg=188 ctermfg=160
    hi Todo cterm=bold ctermbg=226 ctermfg=16
    hi Directory cterm=bold ctermfg=25
    hi Keyword ctermfg=70
    hi Title cterm=bold ctermfg=25
    hi NonText ctermbg=253 ctermfg=16
    hi Conceal ctermbg=253 ctermfg=236
    hi DiffAdd ctermbg=194
    hi DiffChange ctermbg=254
    hi DiffText cterm=bold ctermbg=189 ctermfg=17
    hi DiffDelete cterm=bold ctermbg=224 ctermfg=252
    hi SpellBad cterm=undercurl ctermfg=196
    hi SpellCap cterm=undercurl ctermfg=20
    hi SpellLocal cterm=undercurl ctermfg=28
    hi SpellRare cterm=undercurl ctermfg=240
    hi Visual ctermbg=153
    hi VisualNOS ctermbg=253
    hi Cursor ctermbg=196 ctermfg=231
    hi CursorLineNr cterm=bold ctermbg=251 ctermfg=254
    hi CursorLine ctermbg=254 cterm=none
    hi CursorColumn ctermbg=254
    hi MatchParen ctermbg=221 ctermfg=231
    hi Search cterm=bold ctermbg=148 ctermfg=16
    hi IncSearch cterm=reverse ctermbg=16 ctermfg=220
    hi LineNr ctermbg=253 ctermfg=242
    hi StatusLine ctermfg=254 ctermbg=242 term=NONE cterm=NONE
    hi StatusLineNC ctermbg=247 ctermfg=254 term=NONE cterm=NONE
    hi VertSplit ctermbg=247 ctermfg=247
    hi Folded ctermbg=254 ctermfg=242
    hi FoldColumn cterm=bold ctermbg=145 ctermfg=242
    hi WildMenu ctermbg=148 ctermfg=16
    hi Question ctermbg=148 ctermfg=16
    hi MoreMsg ctermbg=148 ctermfg=16
    hi ModeMsg cterm=bold ctermbg=148 ctermfg=16
    hi WarningMsg cterm=bold ctermfg=160
    hi TabLine ctermbg=22 ctermfg=148 cterm=none
    hi TabLineSel ctermbg=148 ctermfg=22 cterm=none
    hi TabLineFill ctermbg=247 ctermfg=236 cterm=none
    hi SignColumn ctermbg=251 ctermfg=148
    hi Pmenu ctermbg=254 ctermfg=16
    hi PmenuSel cterm=bold ctermbg=148 ctermfg=16
    hi PmenuSbar ctermbg=247
    hi PmenuThumb ctermbg=240
    hi PythonOperator ctermfg=26
    hi pythonDocstring ctermfg=24
    hi pythonDoctest ctermfg=19
    hi javaScript ctermfg=59
    hi DjangoBlock cterm=bold ctermfg=22
  endif
endif 
