filetype off

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neomake/neomake'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/vimproc.vim', { 'do' : 'make' }
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'carlitux/deoplete-ternjs', { 'for': 'javascript', 'do': 'sudo npm -install -g tern' }
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/es.next.syntax.vim', { 'for': 'javascript' }
Plug 'gavocanov/vim-js-indent', { 'for': 'javascript' }
Plug 'moll/vim-node'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'

call plug#end()

filetype plugin indent on
