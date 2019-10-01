execute pathogen#infect()
syntax on
filetype plugin indent on

" Autocomplete
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
" Use system clipboard buffer 
set clipboard=unnamedplus
" Theme
colorscheme spacegray
" Flake 8
let g:flake8_show_in_file=1  " show
" Nerd Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
