" Loading plugins
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-bufferline'
Plug 'tpope/vim-fugitive'
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
filetype plugin indent on

let base16colorspace=256
set background=dark

syntax enable
colorscheme base16-default-dark

" Map the leader key to space
let mapleader="\<SPACE>"

set number
set relativenumber
set clipboard+=unnamed

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
set laststatus=2

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

" Airline configurations
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ctrlp#enabled = 1
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

" Resolves eslint and use neomake to do the linting
function! ResolveESLint()
    let l:npm_bin = ''
    let l:eslint = 'eslint'
    if executable('npm')
        let l:npm_bin = split(system('npm bin'), '\n')[0]
    endif
    if strlen(l:npm_bin) && executable(l:npm_bin . '/eslint')
        let l:eslint = l:npm_bin . '/eslint'
    endif
    let b:neomake_javascript_eslint_exe = l:eslint
endfunction

autocmd FileType javascript :call ResolveESLint()
autocmd! BufWritePost,BufReadPost * Neomake

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_warning_sign = {
    \ 'text': 'W',
    \ 'texthl': 'WarningMsg',
    \ }
let g:neomake_error_sign = {
    \ 'text': 'E',
    \ 'texthl': 'ErrorMsg',
    \ }
let g:neomake_open_list = 2

" Use deopplete
let g:deoplete#enable_at_startup = 1
