"NeoBundle Stuff
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/AppData/Local/nvim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/AppData/Local/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'morhetz/gruvbox'
NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'vim-gitgutter'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-easytags'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'bronson/vim-trailing-whitespace'
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"Shortcuts
inoremap jj <ESC>
map <space>p :CtrlPTag<CR>
let mapleader = "\<Space>"

"Swapping 0 and ^ mappings
nnoremap 0 ^
nnoremap ^ 0

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

"Tabs...
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"Theme setup
set background=dark
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox
set cursorline
