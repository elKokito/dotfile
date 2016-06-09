nnoremap <leader>z :FZF!<CR>
nnoremap <leader>a :Ag! 
nnoremap W :Windows!<CR>
nnoremap <leader>b :Buffers<CR>

let g:fzf_action = {
      \ 'enter': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit' }
