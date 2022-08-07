" Vim color file - retroWhite
" Author: urielsv 
" Last update: 06/08/22 (DD/MM/YY)
" Updates @ https://github.com/urielsv/dotfiles

" Beginning of retroWhite.vim config file

hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "retroWhite"

set background=light

	" Text; Miscellaneous
	hi Normal         guibg=#FFFFFF guifg=#000000 gui=none
	hi SpecialKey     guibg=#FFFFFF guifg=#E783E9 gui=none
	hi VertSplit      guibg=#FFFFFF guifg=#FFEE68 gui=none
	hi SignColumn     guibg=#FFFFFF guifg=#BF81FA gui=none
	hi NonText        guibg=#FFFFFF guifg=#FC6984 gui=none
	hi Directory      guibg=#FFFFFF guifg=#FFEE68 gui=none 
	hi Title          guibg=#FFFFFF guifg=#00FF00 gui=bold

	" Cursor 
	hi Cursor         guibg=#FFEE68 guifg=#FFFFFF gui=none
	hi CursorIM       guibg=#FFEE68 guifg=#FFFFFF gui=none
	hi CursorColumn   guibg=#FFCCE5               gui=none
	hi CursorLine     guibg=#FFCCE5               gui=none

	" Line info 
	hi LineNr         guibg=#FFFFFF guifg=#00FF00 gui=none
	hi StatusLine     guibg=#FFFFFF guifg=#00FF00 gui=none
	hi StatusLineNC   guibg=#FFCCE5 guifg=#FF00FF gui=none

	" Messages
	hi ErrorMsg       guibg=#FF0000 guifg=#FFFFFF gui=none
	hi Question       guibg=#FFFFFF guifg=#7F00FF gui=none
	hi WarningMsg     guibg=#7F00FF guifg=#000000 gui=none
	hi MoreMsg        guibg=#FFFFFF guifg=#7F00FF gui=none
	hi ModeMsg        guibg=#FFFFFF guifg=#7F00FF gui=none

	" Search 
	hi Search         guibg=#FF00FF guifg=#FFEE68 gui=none 
	hi IncSearch      guibg=#FF00FF guifg=#FFEE68 gui=none

	" Menu
	hi Pmenu          guibg=#FF00FF guifg=#FFFFFF gui=none

	" Tabs
	hi TabLine        guibg=#FFFFFF guifg=#FFFFFF gui=none
	hi TabLineFill    guibg=#FFFFFF guifg=#8000FF gui=none
	hi TabLineSel     guibg=#FFFFFF guifg=#FF00FF gui=bold  
	"
	" Visual Mode
	hi Visual         guibg=#FFCCE5 guifg=#000000 gui=none
	hi VisualNOS      guibg=#FFCCE5 guifg=#000000 gui=none

	" Code
	hi Comment        guibg=#FFFFFF guifg=#FC6980 gui=none
	hi Constant       guibg=#FFFFFF guifg=#00FF00 gui=bold
	hi String         guibg=#FFFFFF guifg=#8000FF gui=none
	hi Error          guibg=#FFFFFF guifg=#FF0000 gui=none
	hi Identifier     guibg=#FFFFFF guifg=#FF00FF gui=none
	hi Function       guibg=#FFFFFF guifg=#90CBF1 gui=bold
	hi Ignore         guibg=#FFFFFF guifg=#2B2B2B gui=none
	hi MatchParen     guibg=#8800FF guifg=#000000 gui=none
	hi PreProc        guibg=#FFFFFF guifg=#FF00FF gui=bold
	hi Special        guibg=#FFFFFF guifg=#000000 gui=bold
	hi Todo           guibg=#FFFFFF guifg=#FF0000 gui=bold
	hi Underlined     guibg=#FFFFFF guifg=#FF0000 gui=underline
	hi Statement      guibg=#FFFFFF guifg=#FF00FF gui=bold
	hi Operator       guibg=#FFFFFF guifg=#FC6984 gui=none
	hi Delimiter      guibg=#FFFFFF guifg=#FC6984 gui=none
	hi Type           guibg=#FFFFFF guifg=#0060FF gui=bold
	hi Exception      guibg=#FFFFFF guifg=#FF0000 gui=none
