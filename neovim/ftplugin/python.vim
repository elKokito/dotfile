setlocal tabstop=4
setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4

nnoremap <leader>d :call jedi#goto_definitions()<CR>
command! MyGotoGoto :call jedi#goto()<CR>

