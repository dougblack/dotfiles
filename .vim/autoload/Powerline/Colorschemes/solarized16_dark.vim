" This colorscheme is based on Solarized-dark colors, setting the
" specific values for the Solarized palette, using the
" terminal's 16 ansi color values.
"
" Using 16 ansi color values gives the best results for terminal Vim.
call Pl#Hi#Allocate({
	\ 'darkestblue'    : 24,
	\
	\ 'base03'         : [8, 0x002b36],
	\ 'base02'         : [0, 0x073642],
	\ 'base01'         : [10, 0x586e75],
	\ 'base00'         : [11, 0x657b83],
	\ 'base0'          : [12, 0x839496],
	\ 'base1'          : [14, 0x93a1a1],
	\ 'base2'          : [7, 0xeee8d5],
	\ 'base3'          : [15, 0xfdf6e3],
	\ 'yellow'         : [3, 0xb58900],
	\ 'orange'         : [9, 0xcb4b16],
	\ 'red'            : [1, 0xdc322f],
	\ 'magenta'        : [5, 0xd33682],
	\ 'violet'         : [13, 0x6c71c4],
	\ 'blue'           : [4, 0x268bd2],
	\ 'cyan'           : [6, 0x2aa198],
	\ 'green'          : [2, 0x859900],
	\ })

let g:Powerline#Colorschemes#solarized16_dark#colorscheme= Pl#Colorscheme#Init([
	\ Pl#Hi#Segments(['SPLIT'], {
		\ 'n': ['base3', 'base02'],
		\ 'N': ['base3', 'base02'],
		\ }),
	\
	\ Pl#Hi#Segments(['mode_indicator'], {
		\ 'n': ['base03', 'green'],
		\ 'i': ['base03', 'base3'],
		\ 'v': ['base3', 'yellow'],
		\ 'r': ['base3', 'magenta'],
		\ 's': ['base3', 'orange'],
		\ }),
	\
	\ Pl#Hi#Segments(['branch', 'raw', 'filesize'], {
		\ 'n': ['base03', 'blue'],
		\ 'N': ['base00', 'base02'],
		\ }),
	\
	\ Pl#Hi#Segments(['fileinfo', 'filename', 'filepath'], {
		\ 'n': ['base3', 'darkestblue'],
		\ 'N': ['base00', 'base03'],
		\ }),
	\
	\ Pl#Hi#Segments(['fileinfo.filepath'], {
		\ 'n': ['base2'],
		\ 'N': ['base00'],
		\ }),
	\
	\ Pl#Hi#Segments(['fileinfo.flags'], {
		\ 'n': ['base03'],
		\ 'N': ['base01'],
		\ 'i': ['base03'],
		\ }),
	\
	\ Pl#Hi#Segments(['currenttag', 'fullcurrenttag', 'fileformat', 'fileencoding', 'scrollpercent', 'pwd', 'filetype', 'rvm:string', 'rvm:statusline', 'virtualenv:statusline', 'charcode', 'currhigroup'], {
		\ 'n': ['base1', 'base02'],
		\ 'N': ['base00', 'base02'],
		\ }),
	\
	\ Pl#Hi#Segments(['lineinfo'], {
		\ 'n': ['base03', 'base1'],
		\ 'N': ['base00', 'base03'],
		\ }),
	\
	\ Pl#Hi#Segments(['lineinfo.line.tot'], {
		\ 'n': ['base01'],
		\ 'N': ['base00'],
		\ }),
	\
	\ Pl#Hi#Segments(['errors'], {
		\ 'n': ['orange', 'base02'],
		\ 'N': ['base00', 'base02'],
		\ }),
	\
	\ Pl#Hi#Segments(['paste_indicator', 'ws_marker'], {
		\ 'n': ['base3', 'red'],
		\ }),
	\
	\ Pl#Hi#Segments(['static_str'], {
		\ 'n': ['base3', 'violet'],
		\ 'N': ['base1', 'base02'],
		\ 'i': ['base3', 'base02'],
		\ }),
	\
	\ Pl#Hi#Segments(['command_t:static_str.name', 'gundo:static_str.name', 'lustyexplorer:static_str.name', 'minibufexplorer:static_str.name', 'nerdtree:raw.name', 'tagbar:static_str.name'], {
		\ 'n': ['base3', 'violet'],
		\ 'N': ['base00', 'base03'],
		\ }),
	\
	\ Pl#Hi#Segments([ 'command_t:raw.line', 'gundo:static_str.buffer', 'lustyexplorer:static_str.buffer', 'tagbar:static_str.buffer'], {
		\ 'n': ['base1', 'base02'],
		\ 'N': ['base00', 'base02'],
		\ }),
	\
	\ Pl#Hi#Segments(['command_t:SPLIT', 'gundo:SPLIT', 'lustyexplorer:SPLIT', 'minibufexplorer:SPLIT', 'nerdtree:SPLIT', 'tagbar:SPLIT'], {
		\ 'n': ['base1', 'base02'],
		\ 'N': ['base00', 'base02'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:focus', 'ctrlp:byfname'], {
		\ 'n': ['base1', 'base02'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:prev', 'ctrlp:next'], {
		\ 'n': ['base1', 'base02'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:item'], {
		\ 'n': ['base3', 'violet'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:pwd'], {
		\ 'n': ['base1', 'base02'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:marked'], {
		\ 'n': ['base1', 'base02'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:count'], {
		\ 'n': ['base1', 'base02'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:SPLIT'], {
		\ 'n': ['base1', 'base02'],
		\ }),
  \
  \ Pl#Hi#Segments(['status'], {
		\ 'n': ['green', 'base02'],
		\ 'N': ['base01', 'base02'],
    \ }),
\ ])
