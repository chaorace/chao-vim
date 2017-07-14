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
NeoBundle 'scrooloose/syntastic'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'vim-gitgutter'
NeoBundle 'kshenoy/vim-signature'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-easytags'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'idbrii/vim-endoscope'
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

"Move lines up/down
map <space>k :m -2<CR>
map <space>j :m +1<CR>
"Move lines up/down visually
map <space>k :m -2<CR>
map <space>j :m +1<CR>

"Duplicate line
map <space>d "gY<CR>"gP
"Duplicate lines visually
vmap <space>d y'>p

"Paste from Windows clipboard
inoremap VV <C-o>"+p


"Sytnax and formatting
syntax on
set encoding=utf-8
"Show 100th column
if (exists('+colorcolumn'))
    set colorcolumn=100
    highlight ColorColumn ctermbg=9
endif

"Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Signature Settings
let g:SignatureMarkTextHL = 1

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
