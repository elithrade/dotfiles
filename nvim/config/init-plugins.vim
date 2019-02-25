filetype off

call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neomake/neomake'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/limelight.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'rbgrouleff/bclose.vim'
Plug 'simeji/winresizer'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'carlitux/deoplete-ternjs', { 'for': 'javascript', 'do': 'npm install -g tern'}
Plug 'gavocanov/vim-js-indent', { 'for': 'javascript' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'vim-python/python-syntax', { 'for': 'python' }

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for': 'go' }
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh', 'for': 'go' }
Plug 'zchee/deoplete-go', { 'do': 'make', 'for': 'go'}
Plug 'sebdah/vim-delve', { 'for': 'go' }

call plug#end()

filetype plugin indent on
