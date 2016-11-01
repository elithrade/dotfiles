" Resolve local eslint
function! ResolveESLint()
  let l:npm_bin = ''
  let l:eslint = 'eslint'
  if executable('npm')
    let l:npm_bin = split(system('npm bin'), '\n')[0]
  endif
  if strlen(l:npm_bin) && executable(l:npm_bin . '/eslint')
    let l:eslint = l:npm_bin . '/eslint'
  endif
  let b:neomake_javascript_eslint_exe = l:eslint
endfunction

autocmd FileType javascript :call ResolveESLint()

" Run Neomake when start editing or writing to file
autocmd! BufWritePost,BufReadPost * Neomake

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_warning_sign = {
      \ 'text': 'W',
      \ 'texthl': 'WarningMsg',
      \ }
let g:neomake_error_sign = {
      \ 'text': 'E',
      \ 'texthl': 'ErrorMsg',
      \ }
let g:neomake_open_list = 2
