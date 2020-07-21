" Init {{{
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="mephistopheles"
" }}}
" Colors {{{
let s:bg = "232"
let s:fg = "187"
let s:mute = "109"
let s:red = "160"
let s:orange = "1"
let s:yellow = "11"

if &background == "light"
  let s:bg = "187"
  let s:fg = "232"
endif

if exists("g:mephistopheles_bg")
  let s:bg = g:mephistopheles_bg
endif

if exists("g:mephistopheles_fg")
  let s:bg = g:mephistopheles_fg
endif

if exists("g:mephistopheles_muted")
  let s:mute = g:mephistopheles_muted
endif
" }}}
" Groups {{{ 
let s:normals = []
let s:lamrons = []
let s:muted = []
let s:todo = []
let s:error = []
let s:clear = []
" }}}
" Syntax {{{
let s:normals = s:normals + [
      \ "Identifier",
      \ "Function",
      \ "Statement",
      \ "Conditional",
      \ "Repeat",
      \ "Constant",
      \ "Label",
      \ "Operator",
      \ "Keyword",
      \ "Exception",
      \ "PreProc",
      \ "Include",
      \ "Define",
      \ "Macro",
      \ "PreCondict",
      \ "Type",
      \ "StorageClass",
      \ "Structure",
      \ "Typedef",
      \ "Special",
      \ "SpecialChar",
      \ "Tag",
      \ "Delimiter",
      \ "Debug",
      \ "Ignore",
      \ ]
let s:muted = s:muted + [
      \ "Comment",
      \ ]
let s:todo = s:todo + [
      \ "Todo",
      \ ]
let s:error = s:error + [
      \ "Error",
      \ ]
let s:clear = s:clear + [
      \ "String",
      \ "Character",
      \ "Number",
      \ "Boolean",
      \ "Float",
      \ "SpecialComment",
      \ "Underlined",
      \ ]
" }}}
" Interface {{{
let s:normals = s:normals + [
      \ "ALEErrorSign",
      \ "ColorColumn",
      \ "CursorColumn",
      \ "CursorLineNr",
      \ "DiffAdd",
      \ "DiffChange",
      \ "DiffText",
      \ "Normal",
      \ "PmenuSbar",
      \ "PmenuSel",
      \ "PmenuThumb",
      \ "Title",
      \ ]
let s:lamrons = s:lamrons + [
      \ "Search",
      \ "Visual",
      \ ]
let s:muted = s:muted + [
      \ "ALEWarningSign",
      \ "Conceal",
      \ "DiffDelete",
      \ "Directory",
      \ "ErrorMsg",
      \ "FoldColumn",
      \ "Folded",
      \ "GitGutterAdd",
      \ "GitGutterChange",
      \ "GitGutterChangeDelete",
      \ "GitGutterDelete",
      \ "LineNr",
      \ "MatchParen",
      \ "MoreMsg",
      \ "NonText",
      \ "NvimInternalError",
      \ "Pmenu",
      \ "Question",
      \ "QuickFixLine",
      \ "SignColumn",
      \ "SpecialKey",
      \ "SpellBad",
      \ "SpellCap",
      \ "SpellLocal",
      \ "SpellRare",
      \ "StatusLine",
      \ "StatusLineNC",
      \ "TabLineFill",
      \ "TabLine",
      \ "VirtSplit",
      \ "WarningMsg",
      \ "WildMenu",
      \ ]
let s:clear = s:clear + [
      \ "ALESignColumnWithoutErrors",
      \ "Cursor",
      \ "CursorLine",
      \ "ModeMsg",
      \ "TabLineSel",
      \ "VertSplit",
      \ ]
" }}}
" Paint it all {{{
for group in s:normals
  exec("hi " . group . " cterm=none ctermbg=" . s:bg . " ctermfg=" . s:fg)
endfor

for group in s:lamrons
  exec("hi " . group . " cterm=none ctermbg=" . s:fg . " ctermfg=" . s:bg)
endfor

for group in s:muted
  exec("hi " . group . " cterm=none ctermbg=" . s:bg . " ctermfg=" . s:mute)
endfor

for group in s:todo
  exec("hi " . group . " cterm=none ctermbg=" . s:bg . " ctermfg=" . s:yellow)
endfor

for group in s:error
  exec("hi " . group . " cterm=none ctermbg=" . s:bg . " ctermfg=" . s:red)
endfor

for group in s:clear
  exec("hi " . group . " cterm=none ctermbg=none ctermfg=none")
endfor
" }}}
" Options {{{
if exists("g:mephistopheles_syntax_bold")
  exec("hi Function cterm=bold")
  exec("hi Statement cterm=bold")
  exec("hi Conditional cterm=bold")
  exec("hi Keyword cterm=bold")
endif

if exists("g:mephistopheles_syntax_mute")
  exec("hi Function ctermfg=" . s:mute)
  exec("hi Statement ctermfg=" . s:mute)
  exec("hi Conditional ctermfg=" . s:mute)
  exec("hi Keyword ctermfg=" . s:mute)
endif
" }}}
" vim:foldmethod=marker:foldlevel=0
