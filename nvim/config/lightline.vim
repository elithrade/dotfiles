" Lightline configurations
set laststatus=2
set noshowmode

let g:lightline = {
  \ 'colorscheme': 'one',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ], [ 'filename', 'readonly', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'filename': 'LightlineFilename',
  \   'readonly': 'LightlineReadonly',
  \   'modified': 'LightlineModified',
  \ }
  \ }

  let g:lightline.mode_map = {
  \ 'n' : 'N',
  \ 'i' : 'I',
  \ 'R' : 'R',
  \ 'v' : 'V',
  \ 'V' : 'V-LINE',
  \ "\<C-v>": 'V-BLOCK',
  \ 'c' : 'COMMAND',
  \ 's' : 'SELECT',
  \ 'S' : 'S-LINE',
  \ "\<C-s>": 'S-BLOCK',
  \ 't': 'TERMINAL',
  \ }

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineReadonly()
  return &ft !~? 'help' && &readonly ? '' : ''
endfunction
function! LightlineModified()
  return &modifiable && &modified ? '+' : ''
endfunction
