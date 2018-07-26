let g:jedi#completions_enabled = 0
let g:jedi#goto_definitions_command = "<F12>"
let g:jedi#documentation_command = "<Leader>k"
let g:jedi#usages_command = "<Leader><F12>"
let g:jedi#rename_command = "<leader>rr"
let g:deoplete#sources#jedi#server_timeout = 25
let g:python_highlight_all = 1

" Python run code
augroup python
  " Run python code
  autocmd FileType python nmap <Leader>r :exec '!python' shellescape(@%, 1)<cr>
augroup END
