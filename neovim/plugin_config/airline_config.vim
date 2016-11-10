let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_detect_crypt = 1
let g:airline_inactive_collapse = 1
let g:airline_exclude_preview = 1
let g:airline_detect_modified=1
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#tabgar#enable = 1
let g:airline#extensions#tagbar#flags = 'f'
"      
" let g:airline_section_a = airline#section#create(['mode', '', 'branch'])
let g:airline_section_y = airline#section#create_right(['%t'])
let g:airline#extensions#wordcount#enabled = 0
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
