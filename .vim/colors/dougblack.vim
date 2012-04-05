" Vim color file
" Maintainer:	Doug Black
" Last Change:	2012

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "dougblack"

highlight Function				gui=bold	cterm=bold
highlight Statement				gui=bold	cterm=bold
highlight Precondit				gui=bold	cterm=bold
highlight Type					gui=bold	cterm=bold

highlight LineNr                guifg=#2B2B2B ctermfg=248 guibg=#C0C0FF cterm=bold gui=bold
highlight Bracket				guifg=green ctermfg=green
