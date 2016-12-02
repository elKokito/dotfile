autocmd FileType python setlocal completeopt-=preview
" let g:jedi#force_py_version = 3
let g:jedi#auto_initialization = 0
set omnifunc=jedi#completions
call jedi#configure_call_signatures()
let g:jedi#auto_vim_configuration = 0
let g:jedi#show_call_signatures = 2
let g:jedi#show_call_signatures_delay = 0
let g:jedi#completions_command = '<Ctrl-o>'
