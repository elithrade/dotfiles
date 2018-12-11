" vim-go
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

augroup go
  autocmd!
  " Show by default 4 spaces for a tab and not showing problematic characters
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 nolist
  " :GoBuild and :GoTestCompile
  autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
  autocmd FileType go nmap <leader>t  <Plug>(go-test)
  autocmd FileType go nmap <leader>r  <Plug>(go-run)
  autocmd FileType go nmap <Leader>i <Plug>(go-info)
  autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
  autocmd FileType go nmap <Leader>d <Plug>(go-doc)
  " Toggle between file.go and file_test.go
  autocmd Filetype go nmap <leader>a <Plug>(go-alternate-edit)
  autocmd FileType go nmap <Leader>cc <Plug>(go-coverage-clear)
  autocmd FileType go nmap <Leader><F12> <Plug>(go-referrers)
  autocmd FileType go nmap <F12> <Plug>(go-def)
  autocmd FileType go nmap <Leader>rr <Plug>(go-rename)
  autocmd FileType go nmap <Leader>ii <Plug>(go-implements)
augroup END
" build_go_files is a custom function that builds or compiles the test file.
" It calls :GoBuild if its a Go file, or :GoTestCompile if it's a test file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

let g:go_term_mode = "split"
let g:go_term_height = 10
