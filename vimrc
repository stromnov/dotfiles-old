"===============================================
" VIM configuration
"
"   based on:
"       https://github.com/voldmar/vimconfig/
"       https://github.com/JIghtuse/dotvim/
"       http://habrahabr.ru/post/224979/
"===============================================

set nocompatible                                " Be iMproved, required
filetype off                                    " Required

"===============================================
" Vundle settings
"===============================================

" https://github.com/timss/vimconf/blob/master/.vimrc
" http://erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'                      " Let Vundle manage Vundle, required

" Color theme
Plugin 'altercation/vim-colors-solarized'       " Solarized colorscheme for Vim

" Layout theme
Plugin 'bling/vim-airline'                      " Lean & mean status/tabline for vim

" Syntax checking
Plugin 'scrooloose/syntastic'                   " Syntax checking plugin

" Code/project navigation
Plugin 'scrooloose/nerdtree'                    " Project and file navigation
Plugin 'scrooloose/nerdcommenter'
"Plugin 'majutsushi/tagbar'                      " Class/module browser

" Snippets support
Plugin 'garbas/vim-snipmate'                    " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'           " Dependencies #1
Plugin 'tomtom/tlib_vim'                        " Dependencies #2
Plugin 'honza/vim-snippets'                     " Snippets repo

" Other
"Plugin 'fisadev/FixedTaskList.vim'              " Pending tasks list
"Plugin 'rosenfeld/conque-term'                  " Consoles as buffers
"Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'                     "
Plugin 'tpope/vim-surround'                     " Parentheses, brackets, quotes, XML tags, and more
Plugin 'tpope/vim-eunuch'                       " Vim sugar for the UNIX shell commands
Plugin 'tpope/vim-repeat'                       "

" Dash support
Plugin 'rizzatti/dash.vim'                      " Dash (http://kapeli.com/dash)
Plugin 'rizzatti/funcoo.vim'                    " Dependencies #1

" Python support
Plugin 'klen/python-mode'                       " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim'                   " Jedi-vim autocomplete plugin
"Plugin 'mitsuhiko/vim-jinja'                    " Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'          " Combined Python 2/3 for Vim

" Completion support
" Plugin 'Valloric/YouCompleteMe'

"Plugin 'kien/ctrlp.vim'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'ervandew/supertab'
"Plugin 'kien/rainbow_parentheses.vim'
"EnhancedCommentify

" javascript        https://github.com/vim-scripts/javascript.vim--welshare.git
" jquery            https://github.com/vim-scripts/jQuery.git
" jsl               https://github.com/vim-scripts/compilerjsl.vim.git
" json              https://github.com/vim-scripts/JSON.vim.git
" markdown          https://github.com/vim-scripts/Markdown.git
" pyflakes          https://github.com/kevinw/pyflakes-vim.git
" vim-jade          https://github.com/digitaltoad/vim-jade.git
" vim-less          https://github.com/groenewege/vim-less
" coffee-script     https://github.com/kchmck/vim-coffee-script.git
" virtualenv        https://github.com/jmcantrell/vim-virtualenv.git
" cython            https://github.com/tshirtman/vim-cython.git

" Bundle 'django.vim'
" Bundle 'scratch.vim'
" Bundle 'python.vim'
" Bundle 'othree/html5.vim'
" Bundle 'hail2u/vim-css3-syntax'
" Bundle 'groenewege/vim-less'
" Bundle 'bufexplorer.zip'
" Bundle 'mileszs/ack.vim'
" Bundle 'ctrlp.vim'
" Bundle 'mitechie/pyflakes-pathogen'
" Bundle 'sjl/gundo.vim'
" Bundle 'fs111/pydoc.vim'
" Bundle 'vim-scripts/TaskList.vim'
" Bundle 'nvie/vim-flake8'
" " Bundle 'Shougo/neocomplcache'
" " Bundle 'Shougo/neocomplcache-snippets-complete'
" Bundle 'voldmar/Visual-Mark'
" Bundle 'AndrewRadev/linediff.vim'
" Bundle 'ameade/qtpy-vim'
" Bundle 'mattn/webapi-vim'
" Bundle 'mattn/gist-vim'
" Bundle 'vim-scripts/applescript.vim'
" Bundle 'emezeske/paredit.vim'
" Bundle 'thinca/vim-template'
" Bundle 'AndrewRadev/switch.vim'
" Bundle 'miripiruni/CSScomb-for-Vim.git'
" Bundle 'tpope/vim-fireplace.git'
" Bundle 'guns/vim-clojure-static.git'

" Color schemes
" if $TERM == "xterm-256color"
"set background=dark
"let g:solarized_termcolors=256
"let g:solarized_visibility="high"
"colorscheme solarized
"     Bundle 'altercation/vim-colors-solarized'
"     Bundle 'vim-scripts/Railscasts-Theme-GUIand256color.git'
"     let g:Powerline_symbols = 'fancy'
"     let g:Powerline_cache_enabled = 1
"     let g:Powerline_colorscheme = 'skwp'
"     " Bundle 'Lokaltog/vim-powerline'
" endif
" Bundle 'vim-scripts/xterm16.vim'

call vundle#end()                               " required
filetype plugin indent on                       " required

"===============================================
" General settings
"===============================================

" Enable syntax coloring
syntax on

" Interface settings
set termencoding=utf-8                          " use UTF8-enabled term
set ttyfast                                     " fast terminal mode
set ruler                                       " show ruler
set wildmenu                                    " use wild menu (completion)
set wildignore+=.hg,.git,.svn                   " ignores for wildmenu
set viminfo='100,%,/50,:50,<50,h
set list listchars=tab:>-,trail:~,precedes:.    " list mode
set laststatus=2                                " always show last status
"set modeline
"set showcmd
set visualbell t_vb=                            " disable audial/visual bell
set splitbelow
set splitright

" Navigational settings
set number                                      " show line numbers
set scrolloff=2                                 " keep minimum 2 lines up/down
set sidescrolloff=5                             " keep minimum 5 chars left/right
set nowrap                                      " no line wrap
"set whichwrap+=<,>,[,]                         " wrapping (move between lines)

" Default editing settings
set encoding=utf-8                              " utf-8 encoding by default
set backspace=indent,eol,start                  " backspace
set virtualedit=block                           " allow virtual edit only in block mode
"vnoremap < <gv                                  " left shift in visual mode
"vnoremap > >gv                                  " right shift in visual mode

" Setup .viminfo

" Mouse settings
set mouse=a
function! ToggleMouse()
    if &mouse == 'a'
        set mouse=
        echo "Mouse usage disabled"
    else
        set mouse=a
        echo "Mouse usage enabled"
    endif
endfunction
nnoremap <leader>m :call ToggleMouse()<CR>

"===============================================
" Plugin specific settings
"===============================================

" Colorize (colorscheme)
set background=dark
let g:solarized_termcolors=256
let g:solarized_visibility="high"
colorscheme solarized

" AirLine
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

" aunmenu Help.
"aunmenu Window.
"let no_buffers_menu=1
"set mousemodel=popup_setpos

" Setup position history
if has("autocmd")
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

autocmd FileType python setlocal completeopt-=preview

" Setup buffers
"set autowriteall
"set hidden

" Search
"set nohlsearch
"set incsearch

" Edit
"set autoindent
"set linebreak
"set softtabstop=4
"set shiftwidth=4
"set tabstop=4
"set expandtab
"set showmatch

" Python specific
"let python_highlight_all=1

" MacPorts specific
"let g:portfile_highlight_space_errors=1
