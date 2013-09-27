" Douglas Black

"=== colors ===
set t_Co=256            " use 256 colors by default
syntax enable           " enable syntax processing
set bg=dark             " set dark background
let g:molokai_original=1
let g:CommandTMaxHeight = 10
"let g:solarized_termcolors = 16
colorscheme molokai
filetype indent on
set autoindent
set wildmenu
set lazyredraw
set ttyfast
set backspace=indent,eol,start
set scrolloff=3

"=== tabbing ===
set tabstop=4           " 3 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 3 space tab
set shiftwidth=4        " 3 space tab

"=== interface extras ===
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
"let &winheight = &lines * 85 / 100

"=== searching ===
set showmatch           " higlight matches for searching
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
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

"=== special chars ===
"set list
"set listchars=tab:+\ ,eol:¬
"set formatprg=par\ -w80\ -T4

"=== auto {} and () insertion ===
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap }} }
inoremap {} {}
inoremap { {}<Left>

"=== editing long lines ===
nnoremap j gj
nnoremap k gk
" == Folding ===
nnoremap <space> za
nnoremap <S-space> zM


"=== Shortcuts ===
let mapleader=","
nnoremap B ^
nnoremap E $
nnoremap <leader>m :silent make\|redraw!\|cw<CR>
"nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>w :NERDTree<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>h :A<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>l :call ToggleNumber()<CR>
nnoremap <leader><space> :noh<CR>
nnoremap <leader>s :mksession<CR>
nnoremap <leader>a :Ag 
nnoremap <leader>c :SyntasticCheck<CR>:Errors<CR>
nnoremap <leader>1 :call ToggleNoNumber()<CR>
nnoremap <leader>d :Make! 
nnoremap <leader>r :call RunTestFile()<CR>
nnoremap <leader>d :CtrlPTag<CR>
nmap gV `[v`]
inoremap jk <esc>
inoremap <esc> <nop>
nnoremap $ <nop>
nnoremap ^ <nop>

"=== powerline settings ===
set laststatus=2
set encoding=utf-8
let g:Powerline_symbols = 'compatible'
"let g:Powerline_theme = 'long'
"let g:Powerline_colorscheme = 'solarized16_dark'

"=== ctrlp settings ===
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|\.(o|swp|pyc|egg)$'

"=== NERDTree settings ===
let NERDTreeIgnore = ['\.pyc$', 'build', 'venv', 'egg', 'egg-info/', 'dist', 'docs']

"=== Syntastic settings ===
let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_ignore_files = ['.java$']

"=== launch configurations ===
runtime! debian.vim
set nocompatible
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call togglebg#map("<F5>")

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

function! RunTestsInFile()
    if(&ft=='php')
        :execute "!" . "/Users/dblack/pear/bin/phpunit -d memory_limit=512M -c /usr/local/twilio/src/php/tests/config.xml --bootstrap /usr/local/twilio/src/php/tests/bootstrap.php " . bufname('%') . ' \| grep -v Configuration \| egrep -v "^$" '
    elseif(&ft=='go')
        exec ":!gp test"
    elseif(&ft=='python')
        exec ":!" . ". venv/bin/activate; nosetests " . bufname('%') 
    endif
endfunction

"nnoremap <leader>n :call RunTestsInFile()<CR>

function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

"=== TagList options
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 40
let Tlist_Show_One_File = 1

au VimEnter * highlight clear SignColumn
au BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md :call <SID>StripTrailingWhitespaces()
au FileType java set noexpandtab
au FileType java set list
au FileType java set list
au FileType java set listchars=tab:+\ ,eol:¬
au FileType java set formatprg=par\ -w80\ -T4
au FileType ruby set tabstop=2
au FileType ruby set shiftwidth=2
au FileType ruby set softtabstop=2
au FileType ruby set commentstring=#\ %s
au FileType python set commentstring=#\ %s
au BufEnter *.cls set filetype=java


"=== backup ===
" backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup

function! ToggleNumber()
    if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunc

function! ToggleNoNumber()
    if(&number == 1)
        set nonumber
    else
        set number
    endif
endfunc

function! RunTestFile()
    if(&ft=='python')
        exec ":!" . ". venv/bin/activate; nosetests " .bufname('%') . " --stop"
    endif
endfunction

