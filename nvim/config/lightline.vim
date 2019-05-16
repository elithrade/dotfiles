" Lightline configurations
set laststatus=2
set noshowmode

let g:lightline = {
    \ 'colorscheme': 'one',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'fugitive', 'cocstatus', 'readonly', 'relativepath', 'modified' ] ]
    \ },
    \ 'component': {
    \   'lineinfo': ' %3l:%-2v',
    \ },
    \ 'component_function': {
    \   'fugitive': 'LightlineFugitive',
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

function! LightlineFugitive()
  if exists('*fugitive#head')
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
return ''

endfunction
function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightlineModified()
  return &modifiable && &modified ? '+' : ''
endfunction
