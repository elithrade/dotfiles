" Use deopplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 2

if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Tab complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
