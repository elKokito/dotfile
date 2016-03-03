let g:NERDTreeShowHidden = 1
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeAutoCenter = 1
let g:NERDTreeQuitOnOpen = 1

nnoremap <leader>t : NERDTreeToggle<CR>
nnoremap <leader>f : NERDTreeFind<CR>
nnoremap <leader>b : NERDTreeFromBookmark 

nnoremap <leader>m :MultipleCursorFind 
vnoremap <leader>m :MultipleCursorFind 
