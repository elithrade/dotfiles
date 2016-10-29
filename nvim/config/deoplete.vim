" Use deoplete.
let g:deoplete#enable_at_startup = 1
" Use smartcase.
let g:deoplete#enable_smart_case = 1
" Start completion.
let g:deoplete#auto_completion_start_length = 2

" Disable preview window
set completeopt-=preview

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Use echodoc.
let g:echodoc_enable_at_startup = 1
