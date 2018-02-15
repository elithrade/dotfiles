function! s:apply_vimfiler_win_settings()
  setlocal nonumber norelativenumber

  nmap <buffer> e <Plug>(vimfiler_expand_or_edit)
endfunction

noremap <silent> <Leader>e :VimFilerExplorer -winwidth=25 -split<CR>
noremap <silent> <Leader>dl :VimFilerExplorer -toggle -find<CR>
noremap <silent> <Leader>db :VimFilerBufferDir<CR>
noremap <silent> <Leader>ds :VimFilerSplit<CR>

autocmd FileType vimfiler call s:apply_vimfiler_win_settings()
