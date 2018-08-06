autocmd FileType help wincmd L
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
au FocusGained,BufEnter * :silent! !
au VimResized * :wincmd =

" Skip the quickfix when navigating
augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END

aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END

" Refresh vimrc without exit
autocmd FileType vim nnoremap <F5> :so ~/.config/nvim/init.vim<CR>
