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

set number
set relativenumber
set clipboard=unnamed

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

" Zap trailing whitespace.
function! Zap() abort
  let l:pos=getcurpos()
  let l:search=@/
  keepjumps %substitute/\s\+$//e
  let @/=l:search
  nohlsearch
  call setpos('.', l:pos)
endfunction

" <Leader>zz -- Zap trailing whitespace in the current buffer.
nnoremap <silent> <Leader>zz :call Zap()<CR>

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
nmap <leader>a :cclose<CR>

" Allow saving of files as sudo when I forgot to start vim using sudo
cmap sw w !sudo tee > /dev/null %
