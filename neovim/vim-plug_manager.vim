function! DoRemote(arg)
    UpdateRemotePlugins
endfunction

call plug#begin("~/.config/nvim/plugged")

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'

Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
" deoplete python completion
Plug 'zchee/deoplete-jedi'
" deoplete typescript completion
Plug 'https://github.com/Shougo/vimproc.vim.git', { 'do': 'make' }

Plug 'https://github.com/nvie/vim-flake8.git'
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/mxw/vim-jsx.git'

Plug 'airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-fugitive.git'

Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/tpope/vim-sleuth.git'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/wellle/targets.vim.git'
Plug 'https://github.com/benekastah/neomake.git'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'dhruvasagar/vim-table-mode'

Plug 'bling/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/ryanoasis/vim-devicons.git'
Plug 'crusoexia/vim-monokai'


call plug#end()

source ~/.config/nvim/plugin_config/airline_config.vim
source ~/.config/nvim/plugin_config/nerdtree_config.vim
source ~/.config/nvim/plugin_config/jedi_config.vim
source ~/.config/nvim/plugin_config/easymotion_config.vim
source ~/.config/nvim/plugin_config/easytags_config.vim
source ~/.config/nvim/plugin_config/js.vim
source ~/.config/nvim/plugin_config/neomake.vim
source ~/.config/nvim/plugin_config/fzf.vim

colo monokai
autocmd BufEnter *.py colo molokai
autocmd BufEnter *.ts set syntax=typescript

set background=dark
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

let g:jellybeans_use_term_italics = 1
hi Normal ctermbg=none
hi Normal cterm=none
hi NonText ctermbg=none
hi Normal guibg=none
hi NonText guibg=none
hi LineBr ctermbg=none
hi LineBr ctermfg=grey
hi LineNr guibg=none
hi signcolumn guibg=none
let g:gitgutter_override_sign_column_highlight = 0

let g:deoplete#enable_at_startup = 1
