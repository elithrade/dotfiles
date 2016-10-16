set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Begin loading plugins
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Custom plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'

" Finished loading plugins
call vundle#end()            " required

" General configurations
filetype plugin indent on    " required

let base16colorspace=256
set background=dark

syntax enable
colorscheme jellybeans

set number
set relativenumber
set clipboard=unnamed

" Insert spaces when Tab is pressed
set expandtab

" Render Tab using this many spaces
set tabstop=2

" Indentation amount for < and > commands
set shiftwidth=2

" Highlight search results
set hlsearch

" Make searching case insensitive
set ignorecase

" ... unless search query has capital letters
set smartcase

set noswapfile

" Airline already shows which mode
set noshowmode

" Plugin configurations
let g:airline_theme='powerlineish'

" Abbreviations
cnoreabbrev Wq wq
cnoreabbrev WQ wq

" Key mappings
inoremap jj <Esc>
nnoremap Y y$
vnoremap <C-c> "+y
inoremap <C-v> <Esc>"+p
nnoremap ; :

