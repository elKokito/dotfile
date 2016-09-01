set shiftwidth=4
set tabstop=4
setlocal expandtab
set colorcolumn=120
highlight ColorColumn ctermbg=darkgrey

let g:deoplete#sources#clang#libclang_path = '/usr/lib/x86_64-linux-gnu/libclang-3.8.so.1'
let g:deoplete#sources#clang#clang_header = '/usr/lib/llvm-3.8/include/llvm/'
