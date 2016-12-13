" let g:scratch_autohide = &hidden
let g:scratch_insert_autohide = 0
let g:scratch_no_mappings = 1
nmap <leader>si <plug>(scratch-insert-reuse)
nmap <leader>sp :ScratchPreview<CR>
" autocmd InsertLeave  __Scratch__ :q
