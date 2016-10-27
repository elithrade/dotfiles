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
Plug 'Shougo/echodoc.vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'tpope/vim-surround'

call plug#end()
