autocmd FileType help wincmd L
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
au FocusGained,BufEnter * :silent! !
au VimResized * :wincmd =
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END


" Python run code
autocmd FileType python nmap <F9> :exec '!python' shellescape(@%, 1)<cr>

" Golang build and run
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

" Golang auto formats code on save no need to set list
autocmd FileType go setlocal shiftwidth=4 tabstop=4 nolist

" Refresh vimrc without exit
autocmd FileType vim nnoremap <F5> :so ~/.config/nvim/init.vim<CR>
