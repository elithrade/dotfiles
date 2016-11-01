let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

let base16colorspace=256
set background=dark

syntax enable
try
  colorscheme base16-gooey
catch
  " We don't have it
endtry

" Map the leader key to space
let mapleader="\<SPACE>"

set number
set relativenumber
set clipboard+=unnamed

" Insert spaces when Tab is pressed
set expandtab

" Render Tab using this many spaces
set tabstop=2

" Indentation amount for < and > commands
set shiftwidth=2

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

" Do not care about swap file
set noswapfile

" Abbreviations
cnoreabbrev Wq wq
cnoreabbrev WQ wq

" Key mappings
inoremap jj <Esc>
nnoremap Y y$
vnoremap <C-c> "+y
inoremap <C-v> <Esc>"+p
nnoremap ; :
nnoremap ;; ;
