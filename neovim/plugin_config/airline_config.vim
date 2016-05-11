let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_detect_crypt = 1
let g:airline_inactive_collapse = 1
let g:airline_exclude_preview = 1
let g:airline_detect_modified=1
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '◀'
let g:airline_section_b = '%{expand("%:p:h")}'
let g:airline_section_c = '%t'
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#branch#format = 2
let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : 'I',
  \ 'R'  : 'R',
  \ 'c'  : 'C',
  \ 'v'  : 'V',
  \ 'V'  : 'V',
  \ '' : 'V',
  \ 's'  : 'S',
  \ 'S'  : 'S',
  \ '' : 'S',
  \ }

