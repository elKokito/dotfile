call plug#begin("~/.nvim/plugged")

Plug 'https://github.com/tpope/vim-fugitive.git'

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/kien/rainbow_parentheses.vim.git'
Plug 'https://github.com/majutsushi/tagbar.git'

Plug 'davidhalter/jedi-vim'
Plug 'https://github.com/nvie/vim-flake8.git'
Plug 'https://github.com/Rykka/riv.vim.git'
Plug 'https://github.com/justmao945/vim-clang.git'
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'https://github.com/xolox/vim-easytags.git'
Plug 'https://github.com/xolox/vim-misc.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/mxw/vim-jsx.git'

Plug 'https://github.com/tpope/vim-surround.git'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/easymotion/vim-easymotion.git'

Plug 'bling/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'octol/vim-cpp-enhanced-highlight'


call plug#end()

source ~/.config/nvim/plugin_config/airline_config.vim
source ~/.config/nvim/plugin_config/nerdtree_config.vim
source ~/.config/nvim/plugin_config/jedi_config.vim
source ~/.config/nvim/plugin_config/riv_config.vim
source ~/.config/nvim/plugin_config/clang_config.vim
source ~/.config/nvim/plugin_config/easymotion_config.vim
source ~/.config/nvim/plugin_config/tagbar_config.vim
source ~/.config/nvim/plugin_config/easytags_config.vim
source ~/.config/nvim/plugin_config/flake8_config.vim
source ~/.config/nvim/plugin_config/js.vim

colo jellybeans
