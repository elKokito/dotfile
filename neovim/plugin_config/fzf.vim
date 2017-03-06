nnoremap <leader>z :FZF<CR>
nnoremap <leader>a :Ag! 
nnoremap W :Windows!<CR>
nnoremap B :Buffers!<CR>
nnoremap <leader>b :Buffers<CR><up><down>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gs :GFiles?<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
