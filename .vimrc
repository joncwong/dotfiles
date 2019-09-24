execute pathogen#infect()
syntax on
filetype plugin indent on
set backspace=indent,eol,start  " more powerful backspacing

set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Better command line completion
set wildmenu
" Show partial commands in the last line of the screen
set showcmd
" Highlight searches
set hlsearch
" Use case insensitive search, except when using capital lettesr
set ignorecase
set smartcase
" Enable use of the mouse for all modes
set mouse=a
" Display line numbers on the left
set number
" Theme
colorscheme spacegray
" Flake 8
let g:flake8_show_in_file=1  " show
