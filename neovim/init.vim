" default settings of neovim
source ~/.config/nvim/my_config.vim
" plugin manager (vundle plugin)
source ~/.config/nvim/vim-plug_manager.vim

highlight DiffAdd guifg=green guibg=None
highlight DiffDelete guifg=red guibg=None
highlight DiffChange guifg=orange guibg=None

nnoremap <leader>L :diffget LO<CR>
nnoremap <leader>B :diffget BA<CR>
nnoremap <leader>R :diffget RE<CR>
