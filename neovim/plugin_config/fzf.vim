nnoremap <leader>z :FZF!<CR><up><down>
nnoremap <leader>a :Ag! 
nnoremap W :Windows!<CR><up><down>
nnoremap <leader>b :Buffers<CR><up><down>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gs :Gstatus<CR>

let g:fzf_action = { 'ctrl-n': 'tab split' }
