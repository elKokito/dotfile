setlocal tabstop=4
setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4

source ~/.config/nvim/plugin_config/jedi_config.vim
nnoremap <leader>dd :call jedi#goto_definitions()<CR>
nnoremap <leader>ga :call jedi#goto_assignments()<CR>
nnoremap <leader>gu :call jedi#usages()<CR>

" run current python script
nnoremap <leader>r <C-W>s<C-W>j :terminal python %<CR>
autocmd BufWrite *.py Neomake
