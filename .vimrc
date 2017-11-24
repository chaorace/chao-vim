" Vundle stuff
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif
filetype off

set runtimepath+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" My Bundles here:
Plugin 'morhetz/gruvbox'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'kshenoy/vim-signature'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-unimpaired'
Plugin 'xolox/vim-misc'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'mileszs/ack.vim'

call vundle#end()
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
PluginInstall


"SHORTCUTS

"Map jj to exit
inoremap jj <ESC>
"Set space as the leader key
let mapleader = "\<Space>"

"Quick tag fuzzy search
map <space>p :CtrlPBufTagAll<CR>

"Swapping 0 and ^ mappings
nnoremap 0 ^
nnoremap ^ 0

"Duplicate line
map <space>d "gY<CR>"gP
"Duplicate lines visually
vmap <space>d y'>p

"Sytnax and formatting
syntax on
set encoding=utf-8
"Show 100th column
if (exists('+colorcolumn'))
    set colorcolumn=100
    highlight ColorColumn ctermbg=9
endif

"Signature Settings
let g:SignatureMarkTextHL = 1

"Silver Searcher Settings
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif
" When you press gv you Ack after the selected text
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>
" Open Ack and put the cursor in the right position
map <leader>g :Ack<space>

"Editor preferences
set number
set showmatch
set hlsearch
set incsearch
set wildmenu
set autoread
set so=7
set ignorecase
set smartcase

"Leave backups to git
set nobackup
set nowb
set noswapfile

"Tabs and indents...
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set ai
set si

"Theme setup
set background=dark
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox
set cursorline
