" Douglas Black

"=== launch configurations ===
runtime! debian.vim
set nocompatible

"=== colors ===
set t_Co=256            " use 256 colors by default
syntax enable           " enable syntax processing
set bg=dark             " set dark background
:colorscheme ir_black   " use ~/.vim/colors/ir_black.vim colorscheme

"=== tabbing ===
set tabstop=4           " 4 space tab
set softtabstop=4       " 4 space tab
set shiftwidth=4        " 4 space tab
set expandtab			" use spaces for tabs
set smarttab			" tabs based on above tab values 
set smartindent			" uses smart indenting for all programs
set cindent				" uses smarter indenting for C-style programs

"=== interface extras ===
set number				" show line numbers
set showcmd				" show command in bottom bar

"=== searching ===
set showmatch			" higlight matches for searching
set ignorecase			" ignore case when searching
set incsearch			" search as characters are entered
set hlsearch            " highlight all matches

"=== folding ===
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable        " don't fold files by default on open
set foldlevel=10         " start with fold level of 1

"=== tabs ===
set tabpagemax=20       " 20 tabs open at max
" maps Ctrl-L to previous tab
nnoremap <C-left> :tabprevious<CR>  
" maps Ctrl-R to next tab
nnoremap <C-right> :tabnext<CR>     

"=== auto {} and () insertion ===
" inserts a closing brace after an open brace
inoremap { {}<Left>
" if you type { then Enter it inserts new line and then }
inoremap {<CR> {<CR>}<Esc>O
" inserts just a { if you type {{
inoremap {{ {
" inserts {} if you type {} and ignores others
inoremap {} {}
" auto inserts closing parenthesis
inoremap { {}<Left>

"=== quote completion ===
" inserts closing double quotes
inoremap " ""<Left>
" inserts closing single quotes
inoremap ' ''<Left>
