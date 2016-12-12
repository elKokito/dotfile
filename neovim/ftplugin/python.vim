setlocal tabstop=4
setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4

nnoremap <leader>dd :call jedi#goto_definitions()<CR>
nnoremap <leader>ga :call jedi#goto_assignments()<CR>
nnoremap <leader>gu :call jedi#usages()<CR>
nnoremap <leader>sd :call jedi#show_documentation()<CR>
