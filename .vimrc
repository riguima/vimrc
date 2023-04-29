filetype on
filetype plugin on
filetype indent on

syntax on

call plug#begin()

Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'ervandew/supertab'
Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'raimondi/delimitmate'
Plug 'vim-autoformat/vim-autoformat'

call plug#end()

" Syntastic
let g:syntastic_python_checkers = ['flake8']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Markdown Preview
let g:mkdp_browser = '/usr/bin/firefox-esr'
let g:mkdp_theme = 'dark'
let g:mkdp_open_to_the_world = 1

let &t_SI = "\e[6 q"
let &t_EI = "\e[1 q" 

set nocompatible
set relativenumber
set number
set cursorline
set shiftwidth=4
set tabstop=4
set expandtab
set nowrap
set colorcolumn=80
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set hlsearch
set wildmenu
set wildmode=list:longest
colorscheme dracula
