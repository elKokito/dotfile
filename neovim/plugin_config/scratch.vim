" let g:scratch_autohide = &hidden
let g:scratch_insert_autohide = 0
let g:scratch_no_mappings = 1
nmap <leader>s <plug>(scratch-insert-reuse)
nmap <leader>S <plug>(scratch-insert-clear)
autocmd InsertLeave  __Scratch__ :q
