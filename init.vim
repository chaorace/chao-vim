"Shortcuts
inoremap jj <ESC>
map <space>p :CtrlPTag<CR>
let mapleader = "\<Space>"

"Sytnax and formatting
filetype plugin indent on
syntax on
set encoding=utf-8

"Editor preferences
set number
set showmatch
set hlsearch
set incsearch
set wildmenu
set lazyredraw

"Tabs...
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"Plugin stuff
execute pathogen#infect()

"Theme setup
colorscheme molokai
set cursorline
