  
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vim Plug and initialize
call plug#begin('~/.vim/plugged')

syntax on

" Cmd + C in visual mode to put into clipboard buffer :)
map <C-c> "+y<CR>
" Autocomplete
set backspace=indent,eol,start  " more powerful backspacing

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100
set t_Co=256

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
" Map space as leader
map <Space> <Leader>


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

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


" Formatting selected code with coc.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Format entire document with chosen linters from Ale.
nnoremap <leader>F :ALEFix<return>


" Esc key remap to kj masterrace
inoremap kj <esc>

" Crtl p mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" Vundle Plugins
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'fatih/vim-go'
Plug 'ferranpm/vim-autopairs'
Plug 'neoclide/coc.nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'


call plug#end()
filetype plugin indent on    " required

" colorscheme nord
colorscheme gruvbox
