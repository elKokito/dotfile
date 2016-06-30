setlocal tabstop=4
setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4

function Definition()
    :call jedi#goto_definitions()<CR>
endfunction

function Goto()
    :call jedi#goto()<CR>
endfunction

" nnoremap <leader>d :call jedi#goto_definitions()<CR>
" nnoremap <leader>g :call jedi#goto()<CR>
