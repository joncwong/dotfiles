set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

syntax on

" Cmd + C in visual mode to put into clipboard buffer :)
map <C-c> "+y<CR>
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
" Theme
colorscheme spacegray
let g:spacegray_use_italics = 1
" Ale
let g:ale_completion_enabled = 1
let g:ale_linters = {
\  'python': ['pylint'],
\  'ruby': ['rubocop'],
\  'javascript': ['eslint', 'flow'],
\  'go': ['gofmt'],
\  'yaml': ['yamllint']
\}
let g:ale_fixers = {
\  'python': ['black'],
\  'ruby': ['rubocop'],
\  'go': ['gofmt'],
\  'javascript': ['eslint', 'prettier'],
\  'json': ['prettier'],
\  'css': ['prettier'],
\  'markdown': ['prettier'],
\}
let g:ale_fix_on_save = 1

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
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

" Map ctrl + n to toggle nerd tree
map <C-n> :NERDTreeToggle<CR>

" Vundle Plugins
Plugin 'dense-analysis/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'fatih/vim-go'
Plugin 'ferranpm/vim-autopairs'

call vundle#end()            " required
filetype plugin indent on    " required
