nnoremap <silent> <leader><leader>fz :FZF!<CR>
nnoremap <leader><leader>fa :Ag! 
nnoremap <silent> <leader><leader>fl :Lines!<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gs :GFiles?<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
