" Lightline configurations
set laststatus=2
set noshowmode

let g:lightline = {
    \ 'colorscheme': 'one',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'readonly': 'LightlineReadonly',
    \   'modified': 'LightlineModified',
    \   'cocstatus': 'coc#status'
    \ },
    \ }

let g:lightline.mode_map = {
    \ 'n' : 'N',
    \ 'i' : 'I',
    \ 'R' : 'REPLACE',
    \ 'v' : 'V',
    \ 'V' : 'V-LINE',
    \ "\<C-v>": 'V-BLOCK',
    \ 'c' : 'COMMAND',
    \ 's' : 'SELECT',
    \ 'S' : 'S-LINE',
    \ "\<C-s>": 'S-BLOCK',
    \ 't': 'TERMINAL',
    \ }

function! LightlineReadonly()
  return &ft !~? 'help' && &readonly ? '' : ''
endfunction

function! LightlineModified()
  return &modifiable && &modified ? '+' : ''
endfunction
