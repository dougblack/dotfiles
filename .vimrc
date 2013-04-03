" Douglas Black

"=== launch configurations ===
runtime! debian.vim
set nocompatible
call pathogen#infect()
call pathogen#runtime_append_all_bundles()

"=== powerline settings ===
set laststatus=2
set encoding=utf-8
"let g:Powerline_symbols = 'fancy' " powerline arrow things

"=== backup ===
" backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup

"=== colors ===
set t_Co=256            " use 256 colors by default
syntax enable           " enable syntax processing
set bg=dark             " set dark background
"let g:solarized_termcolors=256
:colorscheme molokai   " use ~/.vim/colors/ir_black.vim colorscheme

"=== tabbing ===
set tabstop=2           " 2 space tab
set expandtab			" use spaces for tabs
set softtabstop=2       " 2 space tab
set shiftwidth=2        " 4 space tab
filetype indent on

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

"=== auto comment support ===
inoremap /*<CR> /*<CR> *<CR>*/<UP> 

"=== editing long lines ===
nnoremap j gj
nnoremap k gk

"=== quote completion ===
" inserts closing double quotes
"""inoremap " ""<Left>
" inserts closing single quotes
""inoremap ' ''<Left>

"=== Makefile ===
nnoremap <leader>m :silent make\|redraw!\|cw<CR>
nnoremap <leader>w :NERDTree<CR>

"=== macvim options ===
set guioptions-=r 
set guioptions-=L

"=== tmux options ===
if exists('$TMUX') " allows cursor change in tmux mode
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

au VimEnter * highlight clear SignColumn
