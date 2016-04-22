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
Plug 'https://github.com/Shougo/vimproc.vim.git'
Plug 'https://github.com/Quramy/tsuquyomi.git'

Plug 'https://github.com/nvie/vim-flake8.git'
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/mxw/vim-jsx.git'

Plug 'https://github.com/tpope/vim-surround.git'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/wellle/targets.vim.git'

Plug 'bling/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/ryanoasis/vim-devicons.git'


call plug#end()

source ~/.config/nvim/plugin_config/airline_config.vim
source ~/.config/nvim/plugin_config/nerdtree_config.vim
source ~/.config/nvim/plugin_config/jedi_config.vim
source ~/.config/nvim/plugin_config/riv_config.vim
source ~/.config/nvim/plugin_config/clang_config.vim
source ~/.config/nvim/plugin_config/easymotion_config.vim
source ~/.config/nvim/plugin_config/tagbar_config.vim
source ~/.config/nvim/plugin_config/easytags_config.vim
source ~/.config/nvim/plugin_config/js.vim

colo jellybeans

let g:deoplete#enable_at_startup = 1
