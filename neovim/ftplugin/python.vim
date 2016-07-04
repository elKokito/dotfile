setlocal tabstop=4
setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4

command! MyGotoDefinition :call jedi#goto_definitions()
command! MyGotoGoto :call jedi#goto()<CR>

