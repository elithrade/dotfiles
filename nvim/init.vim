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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-fugitive'
Plugin 'chriskempson/base16-vim'

" Finished loading plugins
call vundle#end()            " required

" General configurations
filetype plugin indent on    " required

let base16colorspace=256
set background=dark

syntax enable
colorscheme base16-default-dark

" Map the leader key to space
let mapleader="\<SPACE>"

set number
set relativenumber
set clipboard=unnamed

" Insert spaces when Tab is pressed
set expandtab

" Render Tab using this many spaces
set tabstop=4

" Indentation amount for < and > commands
set shiftwidth=4

" Highlight search results
set hlsearch

" Make searching case insensitive
set ignorecase

" ... unless search query has capital letters
set smartcase

" Use <C-L> to clear the highlighting of :set hlsearch
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Search and replace
nmap <Leader>s :%s//g<Left><Left>

" Tell Vim which characters to show for expanded Tabs, trailing whitespace, and end-of-lines
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

 " Show problematic characters
set list

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

" Do not care about swap file
set noswapfile

" Airline already shows which mode
set noshowmode

" Abbreviations
cnoreabbrev Wq wq
cnoreabbrev WQ wq

" Key mappings
inoremap jj <Esc>
nnoremap Y y$
vnoremap <C-c> "+y
inoremap <C-v> <Esc>"+p
nnoremap ; :

" Open file menu
nnoremap <Leader>o :CtrlP<CR>
" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
" Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>

" Plugin configurations
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ctrlp#enabled = 1

" Powerline symbols
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" Airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
