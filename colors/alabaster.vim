" Alabaster colorscheme for Vim/Neovim
" Maintainer: Alabaster Theme
" License: MIT

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "alabaster"

" Color definitions - Alabaster theme palette
let s:background = "#0e1415"
let s:foreground = "#cecece"
let s:cursor     = "#cecece"

" ANSI Colors (alabaster palette)
let s:black      = "#000000"    " ansi 0 - black
let s:red        = "#d2322d"    " ansi 1 - red (errors, functions)
let s:green      = "#6abf40"    " ansi 2 - green (strings, added)
let s:yellow     = "#cd974b"    " ansi 3 - yellow (types, warnings, active)
let s:blue       = "#217EBC"    " ansi 4 - blue (keywords, definitions)
let s:magenta    = "#9B3596"    " ansi 5 - magenta (constants)
let s:cyan       = "#178F79"    " ansi 6 - cyan (special)
let s:white      = "#cecece"    " ansi 7 - foreground
let s:br_black   = "#333333"    " ansi 8 - bright black (comments dim)
let s:br_red     = "#c33c33"    " ansi 9 - bright red
let s:br_green   = "#95cb82"    " ansi 10 - bright green (strings)
let s:br_yellow  = "#dfdf8e"    " ansi 11 - bright yellow (comments)
let s:br_blue    = "#71aed7"    " ansi 12 - bright blue (definitions)
let s:br_magenta = "#cc8bc9"    " ansi 13 - bright magenta (constants)
let s:br_cyan    = "#47BEA9"    " ansi 14 - bright cyan
let s:br_white   = "#ffffff"    " ansi 15 - bright white

" Terminal colors
if has('nvim')
  let g:terminal_color_0 = s:black
  let g:terminal_color_1 = s:red
  let g:terminal_color_2 = s:green
  let g:terminal_color_3 = s:yellow
  let g:terminal_color_4 = s:blue
  let g:terminal_color_5 = s:magenta
  let g:terminal_color_6 = s:cyan
  let g:terminal_color_7 = s:white
  let g:terminal_color_8 = s:br_black
  let g:terminal_color_9 = s:br_red
  let g:terminal_color_10 = s:br_green
  let g:terminal_color_11 = s:br_yellow
  let g:terminal_color_12 = s:br_blue
  let g:terminal_color_13 = s:br_magenta
  let g:terminal_color_14 = s:br_cyan
  let g:terminal_color_15 = s:br_white
elseif has('terminal')
  let g:terminal_ansi_colors = [
    \ s:black, s:red, s:green, s:yellow,
    \ s:blue, s:magenta, s:cyan, s:white,
    \ s:br_black, s:br_red, s:br_green, s:br_yellow,
    \ s:br_blue, s:br_magenta, s:br_cyan, s:br_white
  \ ]
endif

" Basic highlight groups
exe "hi Normal guifg=" . s:foreground . " guibg=" . s:background . " ctermfg=7 ctermbg=0"
exe "hi Cursor guifg=" . s:background . " guibg=" . s:cursor . " ctermfg=0 ctermbg=7"
exe "hi CursorLine guibg=" . s:br_black . " ctermbg=8"
exe "hi CursorColumn guibg=" . s:br_black . " ctermbg=8"
exe "hi LineNr guifg=" . s:br_black . " ctermfg=8"
exe "hi CursorLineNr guifg=" . s:white . " ctermfg=7"

" Syntax highlighting
exe "hi Comment guifg=" . s:br_black . " gui=italic ctermfg=8 cterm=italic"
exe "hi String guifg=" . s:green . " ctermfg=2"
exe "hi Character guifg=" . s:br_green . " ctermfg=10"
exe "hi Number guifg=" . s:cyan . " ctermfg=6"
exe "hi Float guifg=" . s:cyan . " ctermfg=6"
exe "hi Boolean guifg=" . s:white . " ctermfg=1"
exe "hi Constant guifg=" . s:br_magenta . " ctermfg=5"
exe "hi Identifier guifg=" . s:white . " ctermfg=7"
exe "hi Function guifg=" . s:white . " gui=bold ctermfg=1 cterm=bold"
exe "hi Statement guifg=" . s:blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi Conditional guifg=" . s:blue . " ctermfg=4"
exe "hi Repeat guifg=" . s:blue . " ctermfg=4"
exe "hi Label guifg=" . s:blue . " ctermfg=4"
exe "hi Operator guifg=" . s:white . " ctermfg=7"
exe "hi Keyword guifg=" . s:white . " gui=bold ctermfg=4 cterm=bold"
exe "hi Exception guifg=" . s:red . " ctermfg=1"
exe "hi PreProc guifg=" . s:br_magenta . " ctermfg=13"
exe "hi Include guifg=" . s:br_magenta . " ctermfg=13"
exe "hi Define guifg=" . s:br_magenta . " ctermfg=13"
exe "hi Macro guifg=" . s:br_magenta . " ctermfg=13"
exe "hi PreCondit guifg=" . s:br_magenta . " ctermfg=13"
exe "hi Type guifg=" . s:yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi StorageClass guifg=" . s:yellow . " ctermfg=3"
exe "hi Structure guifg=" . s:yellow . " ctermfg=3"
exe "hi Typedef guifg=" . s:yellow . " ctermfg=3"
exe "hi Special guifg=" . s:cyan . " ctermfg=6"
exe "hi SpecialChar guifg=" . s:br_cyan . " ctermfg=14"
exe "hi Tag guifg=" . s:red . " ctermfg=1"
exe "hi Delimiter guifg=" . s:white . " ctermfg=7"
exe "hi SpecialComment guifg=" . s:br_yellow . " gui=italic ctermfg=11 cterm=italic"
exe "hi Debug guifg=" . s:br_red . " ctermfg=9"
exe "hi Underlined gui=underline ctermfg=4 cterm=underline"
exe "hi Ignore guifg=" . s:br_black . " ctermfg=8"
exe "hi Error guifg=" . s:red . " guibg=" . s:background . " gui=bold ctermfg=1 ctermbg=0 cterm=bold"
exe "hi Todo guifg=" . s:yellow . " guibg=" . s:background . " gui=bold ctermfg=3 ctermbg=0 cterm=bold"

" UI elements
exe "hi Visual guibg=" . s:br_black . " ctermbg=8"
exe "hi VisualNOS guibg=" . s:br_black . " ctermbg=8"
exe "hi Search guifg=" . s:background . " guibg=" . s:yellow . " ctermfg=0 ctermbg=3"
exe "hi IncSearch guifg=" . s:background . " guibg=" . s:yellow . " gui=bold ctermfg=0 ctermbg=3 cterm=bold"
exe "hi MatchParen guifg=" . s:yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi StatusLine guifg=" . s:white . " guibg=" . s:br_black . " ctermfg=7 ctermbg=8"
exe "hi StatusLineNC guifg=" . s:br_black . " guibg=" . s:br_black . " ctermfg=8 ctermbg=8"
exe "hi VertSplit guifg=" . s:br_black . " guibg=" . s:background . " ctermfg=8 ctermbg=0"
exe "hi WildMenu guifg=" . s:background . " guibg=" . s:yellow . " ctermfg=0 ctermbg=3"
exe "hi Pmenu guifg=" . s:white . " guibg=" . s:br_black . " ctermfg=7 ctermbg=8"
exe "hi PmenuSel guifg=" . s:background . " guibg=" . s:yellow . " ctermfg=0 ctermbg=3"
exe "hi PmenuSbar guibg=" . s:br_black . " ctermbg=8"
exe "hi PmenuThumb guibg=" . s:white . " ctermbg=7"
exe "hi TabLine guifg=" . s:br_black . " guibg=" . s:br_black . " ctermfg=8 ctermbg=8"
exe "hi TabLineFill guifg=" . s:br_black . " guibg=" . s:br_black . " ctermfg=8 ctermbg=8"
exe "hi TabLineSel guifg=" . s:white . " guibg=" . s:background . " gui=bold ctermfg=7 ctermbg=0 cterm=bold"

" Git/diff colors
exe "hi DiffAdd guifg=" . s:green . " guibg=" . s:background . " ctermfg=2 ctermbg=0"
exe "hi DiffChange guifg=" . s:yellow . " guibg=" . s:background . " ctermfg=3 ctermbg=0"
exe "hi DiffDelete guifg=" . s:red . " guibg=" . s:background . " ctermfg=1 ctermbg=0"
exe "hi DiffText guifg=" . s:blue . " guibg=" . s:background . " gui=bold ctermfg=4 ctermbg=0 cterm=bold"
exe "hi GitGutterAdd guifg=" . s:green . " ctermfg=2"
exe "hi GitGutterChange guifg=" . s:yellow . " ctermfg=3"
exe "hi GitGutterDelete guifg=" . s:red . " ctermfg=1"
exe "hi GitGutterChangeDelete guifg=" . s:yellow . " ctermfg=3"
exe "hi SignColumn guibg=" . s:background . " ctermbg=0"

" Spell checking
exe "hi SpellBad gui=undercurl guisp=" . s:red . " cterm=underline"
exe "hi SpellCap gui=undercurl guisp=" . s:blue . " cterm=underline"
exe "hi SpellRare gui=undercurl guisp=" . s:magenta . " cterm=underline"
exe "hi SpellLocal gui=undercurl guisp=" . s:cyan . " cterm=underline"

" File explorer and tree colors
exe "hi Directory guifg=" . s:blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi NvimTreeFolderName guifg=" . s:blue . " ctermfg=4"
exe "hi NvimTreeFolderIcon guifg=" . s:blue . " ctermfg=4"
exe "hi NvimTreeOpenedFolderName guifg=" . s:br_blue . " gui=bold ctermfg=12 cterm=bold"
exe "hi NvimTreeFileName guifg=" . s:white . " ctermfg=7"
exe "hi NvimTreeExecFile guifg=" . s:green . " gui=bold ctermfg=2 cterm=bold"
exe "hi NvimTreeSpecialFile guifg=" . s:magenta . " gui=bold ctermfg=5 cterm=bold"
exe "hi NvimTreeImageFile guifg=" . s:cyan . " ctermfg=6"
exe "hi NvimTreeMarkdownFile guifg=" . s:red . " ctermfg=1"
exe "hi NvimTreeIndentMarker guifg=" . s:br_black . " ctermfg=8"

" Neo-tree colors
exe "hi NeoTreeDirectoryName guifg=" . s:blue . " ctermfg=4"
exe "hi NeoTreeDirectoryIcon guifg=" . s:blue . " ctermfg=4"
exe "hi NeoTreeFileName guifg=" . s:white . " ctermfg=7"
exe "hi NeoTreeFileIcon guifg=" . s:cyan . " ctermfg=6"
exe "hi NeoTreeModified guifg=" . s:yellow . " ctermfg=3"
exe "hi NeoTreeGitAdded guifg=" . s:green . " ctermfg=2"
exe "hi NeoTreeGitDeleted guifg=" . s:red . " ctermfg=1"
exe "hi NeoTreeGitModified guifg=" . s:yellow . " ctermfg=3"
exe "hi NeoTreeGitUntracked guifg=" . s:br_black . " ctermfg=8"

" Telescope colors
exe "hi TelescopeSelection guifg=" . s:white . " guibg=" . s:br_black . " gui=bold ctermfg=7 ctermbg=8 cterm=bold"
exe "hi TelescopeSelectionCaret guifg=" . s:red . " gui=bold ctermfg=1 cterm=bold"
exe "hi TelescopeMultiSelection guifg=" . s:green . " gui=bold ctermfg=2 cterm=bold"
exe "hi TelescopeNormal guifg=" . s:white . " ctermfg=7"
exe "hi TelescopeBorder guifg=" . s:br_black . " ctermfg=8"
exe "hi TelescopePromptBorder guifg=" . s:blue . " ctermfg=4"
exe "hi TelescopeResultsBorder guifg=" . s:br_black . " ctermfg=8"
exe "hi TelescopePreviewBorder guifg=" . s:br_black . " ctermfg=8"
exe "hi TelescopeTitle guifg=" . s:white . " gui=bold ctermfg=7 cterm=bold"
exe "hi TelescopePromptTitle guifg=" . s:blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi TelescopeResultsTitle guifg=" . s:green . " gui=bold ctermfg=2 cterm=bold"
exe "hi TelescopePreviewTitle guifg=" . s:cyan . " gui=bold ctermfg=6 cterm=bold"

" LSP and diagnostic colors
exe "hi DiagnosticError guifg=" . s:red . " ctermfg=1"
exe "hi DiagnosticWarn guifg=" . s:yellow . " ctermfg=3"
exe "hi DiagnosticInfo guifg=" . s:blue . " ctermfg=4"
exe "hi DiagnosticHint guifg=" . s:br_black . " ctermfg=8"
exe "hi DiagnosticUnderlineError gui=undercurl guisp=" . s:red . " cterm=underline"
exe "hi DiagnosticUnderlineWarn gui=undercurl guisp=" . s:yellow . " cterm=underline"
exe "hi DiagnosticUnderlineInfo gui=undercurl guisp=" . s:blue . " cterm=underline"
exe "hi DiagnosticUnderlineHint gui=undercurl guisp=" . s:br_black . " cterm=underline"

" LSP semantic highlighting
exe "hi @variable guifg=" . s:white . " ctermfg=7"
exe "hi @variable.builtin guifg=" . s:br_magenta . " gui=italic ctermfg=5 cterm=italic"
exe "hi @variable.parameter guifg=" . s:white . " gui=italic ctermfg=7 cterm=italic"
exe "hi @constant guifg=" . s:br_magenta . " gui=bold ctermfg=5 cterm=bold"
exe "hi @constant.builtin guifg=" . s:br_magenta . " gui=bold,italic ctermfg=5 cterm=bold,italic"
exe "hi @constant.macro guifg=" . s:br_magenta . " gui=bold ctermfg=13 cterm=bold"
exe "hi @string guifg=" . s:green . " ctermfg=2"
exe "hi @string.escape guifg=" . s:br_green . " gui=bold ctermfg=10 cterm=bold"
exe "hi @string.special guifg=" . s:cyan . " ctermfg=6"
exe "hi @character guifg=" . s:br_green . " ctermfg=10"
exe "hi @number guifg=" . s:cyan . " ctermfg=6"
exe "hi @boolean guifg=" . s:white . " gui=bold ctermfg=1 cterm=bold"
exe "hi @float guifg=" . s:cyan . " ctermfg=6"
exe "hi @function guifg=" . s:white . " gui=bold ctermfg=1 cterm=bold"
exe "hi @function.builtin guifg=" . s:white . " gui=bold,italic ctermfg=1 cterm=bold,italic"
exe "hi @function.macro guifg=" . s:white . " gui=bold ctermfg=9 cterm=bold"
exe "hi @method guifg=" . s:white . " ctermfg=1"
exe "hi @constructor guifg=" . s:yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi @parameter guifg=" . s:white . " gui=italic ctermfg=7 cterm=italic"
exe "hi @keyword guifg=" . s:white . " gui=bold ctermfg=4 cterm=bold"
exe "hi @keyword.function guifg=" . s:white . " gui=italic ctermfg=4 cterm=italic"
exe "hi @keyword.operator guifg=" . s:white . " ctermfg=4"
exe "hi @keyword.return guifg=" . s:white . " gui=bold ctermfg=4 cterm=bold"
exe "hi @conditional guifg=" . s:white . " ctermfg=4"
exe "hi @repeat guifg=" . s:blue . " ctermfg=4"
exe "hi @label guifg=" . s:blue . " ctermfg=4"
exe "hi @operator guifg=" . s:white . " ctermfg=7"
exe "hi @exception guifg=" . s:red . " gui=bold ctermfg=1 cterm=bold"
exe "hi @type guifg=" . s:yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi @type.builtin guifg=" . s:yellow . " gui=bold,italic ctermfg=3 cterm=bold,italic"
exe "hi @type.definition guifg=" . s:yellow . " ctermfg=3"
exe "hi @storageclass guifg=" . s:yellow . " ctermfg=3"
exe "hi @structure guifg=" . s:yellow . " ctermfg=3"
exe "hi @namespace guifg=" . s:yellow . " gui=italic ctermfg=3 cterm=italic"
exe "hi @include guifg=" . s:br_magenta . " gui=bold ctermfg=13 cterm=bold"
exe "hi @preproc guifg=" . s:br_magenta . " ctermfg=13"
exe "hi @debug guifg=" . s:br_red . " ctermfg=9"
exe "hi @tag guifg=" . s:red . " ctermfg=1"
exe "hi @tag.attribute guifg=" . s:cyan . " ctermfg=6"
exe "hi @tag.delimiter guifg=" . s:white . " ctermfg=7"
exe "hi @comment guifg=" . s:br_yellow . " gui=italic ctermfg=8 cterm=italic"
exe "hi @comment.documentation guifg=" . s:br_yellow . " gui=italic ctermfg=11 cterm=italic"

" Treesitter context
exe "hi TreesitterContext guibg=" . s:br_black . " ctermbg=8"
exe "hi TreesitterContextLineNumber guifg=" . s:white . " gui=bold ctermfg=7 cterm=bold"
