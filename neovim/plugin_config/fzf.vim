nnoremap <leader>z :FZF!<CR>
nnoremap <leader>a :Ag! 
nnoremap <silent> <leader><leader>l :Lines!<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gs :GFiles?<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_buffers_jump = 1
