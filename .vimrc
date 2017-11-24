"NeoBundle Stuff
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.config/nvim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.config/nvim/bundle'))

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
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'kshenoy/vim-signature'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'xolox/vim-misc'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'mileszs/ack.vim'

" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


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
