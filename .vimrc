" Douglas Black

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
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap }} }
inoremap {} v}
inoremap { {}<Left>

"=== editing long lines ===
nnoremap j gj
nnoremap k gk
" == Folding ===
nnoremap <space> za
nnoremap <S-space> zM
" Move lines
nnoremap _ ddp
nnoremap - ddkkp

"=== Shortcuts ===
let mapleader=","
nnoremap <leader>m :silent make\|redraw!\|cw<CR> 
nnoremap <leader>t :TlistOpen<CR>
nnoremap <leader>w :NERDTree<CR>
nnoremap <leader>h :A<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
inoremap jk <esc>
inoremap <esc> <nop>


"=== launch configurations ===
runtime! debian.vim
set nocompatible
call pathogen#infect()
call pathogen#runtime_append_all_bundles()

"=== tmux options ===
if exists('$TMUX') " allows cursor change in tmux mode
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"=== macvim options ===
set guioptions-=r 
set guioptions-=L

"=== TagList options
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 40
let Tlist_Show_One_File = 1

au VimEnter * highlight clear SignColumn

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
