" default settings of neovim
source ~/.config/nvim/my_config.vim
" plugin manager
autocmd BufEnter *.ts set syntax=typescript
autocmd BufEnter *.ts set filetype=typescript
autocmd BufEnter *.js set syntax=javascript
autocmd BufEnter *.js set filetype=javascript
autocmd BufEnter *.sls set filetype=yaml
autocmd BufEnter *.sls set syntax=yaml
autocmd BufEnter */*icinga*/*conf set filetype=icinga2
autocmd FocusGained * silent! checktime

set termguicolors
set background=dark
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

let g:jellybeans_use_term_italics = 1
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

hi DiffAdd      gui=none    guifg=NONE          guibg=#bada9f
hi DiffChange   gui=none    guifg=NONE          guibg=#e5d5ac
hi DiffDelete   gui=bold    guifg=#ff8080       guibg=#ffb0b0
hi DiffText     gui=none    guifg=NONE          guibg=#8cbee2
hi DiffAdd      cterm=none    ctermfg=Green          ctermbg=None
hi DiffChange   cterm=none    ctermfg=Blue          ctermbg=None
hi DiffDelete   cterm=bold    ctermfg=Red           ctermbg=None
hi DiffText     cterm=none    ctermfg=Blue          ctermbg=None

nnoremap <leader>L :diffget LO<CR>
nnoremap <leader>B :diffget BA<CR>
nnoremap <leader>R :diffget RE<CR>

hi TabLineFill ctermfg=235 ctermbg=250 guibg=#c5c5c5 guifg=#1c1c1c
hi TabLineSel ctermbg=000 guibg=#2c2c2c guifg=#4e9ab7
hi Tabline ctermbg=246 ctermfg=235 guibg=#c5c5c5 guifg=#1c1c1c

hi Cursor guifg=None guibg=#3d3d3d

highlight Pmenu ctermbg=233 ctermfg=154 guifg=gray61 guibg=gray11
highlight PmenuSel ctermbg=123 ctermfg=44 guifg=gray51 guibg=gray33
