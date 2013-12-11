"
" VIM configuration
"

" Pathogen
filetype off
call pathogen#infect()
syntax on
"call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()

autocmd!

set nocompatible

" Setup .viminfo
set viminfo='100,%,/50,:50,<50,h

" Set color scheme
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_visibility="high"

" Enable colorscheme toggling
call togglebg#map("<F5>")

" Position history
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" Setup buffers
set autowriteall
set hidden

" Enable indentation and plugins
filetype indent on
filetype plugin on

" Navigation
set number              " line numbers
set nowrap              " no line break
"set whichwrap+=<,>,[,]  " wrapping
set scrolloff=3         "
set sidescrolloff=5     "

" Search
set nohlsearch
set incsearch
"set ignorecase
"set smartcase
"set grepprg=/opt/local/bin/egrep\ --exclude-dir='.svn'\ -I\ -n\ $*\ /dev/null

" Edit 
set autoindent
set linebreak
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set showmatch

" Shifting
vnoremap < <gv
vnoremap > >gv

" Interface
set backspace=2
set termencoding=utf-8
syn on
set ruler
set modeline
set ve=block
set mouse=a

set list
set listchars=trail:~

set laststatus=2
set wildmenu
set showcmd

set vb t_vb=
set splitbelow

" Python specific
let python_highlight_all=1

" MacPorts specific
let g:portfile_highlight_space_errors=1

" AirLine
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
