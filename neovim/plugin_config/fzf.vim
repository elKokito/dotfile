nnoremap <leader>z :FZF!<CR><up><down>
nnoremap <leader>a :Ag! 
nnoremap W :Windows!<CR><up><down>
nnoremap <leader>b :Buffers<CR><up><down>
nnoremap <leader><left> :Gblame<CR>

let g:fzf_action = {
      \ 'enter': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit' }
