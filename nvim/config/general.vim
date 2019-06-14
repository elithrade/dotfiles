let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

syntax enable

try
  if filereadable(expand("~/.vimrc_background"))
    source ~/.vimrc_background
  endif
catch
  " We don't have it
endtry

" Map the leader key to space
let mapleader="\<SPACE>"
" Map the local leader to \
let maplocalleader = "\\"

set number
set relativenumber
set clipboard+=unnamedplus

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
"
" Remove trailing white spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Show problematic characters
set list
set listchars=nbsp:+
set listchars+=tab:▷┅
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=trail:•

" Do not care about swap file
set noswapfile
set cc=99

" Show popup menu, even if there is one entry
set completeopt=menu,menuone
" Completion window max size
set pumheight=10
" Vertical windows should be split to right
set splitright
" Horizontal windows should split to bottom
set splitbelow

if has('linebreak')
  let &showbreak='⤷ '
endif

" Use guifg/guibg instead of ctermfg/ctermbg in terminal
if has('termguicolors')
  set termguicolors
endif

" Start scrolling 3 lines before edge of viewport
set scrolloff=3

" Abbreviations
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev :Q :q
cnoreabbrev :W :w

" set timeoutlen=500 ttimeoutlen=0

" Key mappings
nnoremap Q <Nop>
map q <Nop>
nnoremap Y y$
vnoremap <C-c> "+y
inoremap <C-v> <Esc>"+p
nnoremap n nzz
nnoremap coh :nohl<CR>
nnoremap J mzJ`z
" Quickly replace the current word under cursor with what's in register 0
nnoremap <C-j> cw<C-r>0<Esc>
nnoremap <silent> <Tab> :wincmd w<CR>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" Horizontal split
nmap <Leader>- :sp<CR>
" Vertical split
nmap <Leader>\ :vs<CR>
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>c :close<CR>
" Close quickfix
nmap <Leader>a :cclose<CR>
nmap <Leader>n :noh<CR>
" Close buffer
nmap <Leader>b :bdelete<CR>

" Allow saving of files as sudo when I forgot to start vim using sudo
cmap sw :w suda://%

" Closes the terminal buffer and jump back to the previous one
tnoremap <ESC> <C-\><C-n>:buffer #<CR>
