" default settings of neovim
source ~/.config/nvim/my_config.vim
" plugin manager
autocmd BufEnter *.ts set syntax=typescript
autocmd BufEnter *.ts set filetype=typescript
autocmd BufEnter *.js set syntax=javascript
autocmd BufEnter *.js set filetype=javascript

set background=dark
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

let g:jellybeans_use_term_italics = 1
" let g:gitgutter_override_sign_column_highlight = 0

let g:deoplete#enable_at_startup = 1
source ~/.config/nvim/vim-plug_manager.vim
colo monokai
hi Normal ctermbg=none
hi Normal cterm=none
hi NonText ctermbg=none
hi Normal guibg=none
hi NonText guibg=none
hi LineBr ctermbg=none
hi LineBr ctermfg=grey
hi LineNr guibg=none
hi signcolumn guibg=none

highlight DiffAdd guifg=green guibg=None
highlight DiffDelete guifg=red guibg=None
highlight DiffChange guifg=orange guibg=None

nnoremap <leader>L :diffget LO<CR>
nnoremap <leader>B :diffget BA<CR>
nnoremap <leader>R :diffget RE<CR>

hi TabLineFill gui=None
hi TabLineSel gui=none guifg=red
hi Tabline guifg=#3c3c3c guibg=white
