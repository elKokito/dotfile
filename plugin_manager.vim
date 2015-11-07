set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
Plugin 'bling/vim-airline'
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/Rykka/riv.vim.git'
Plugin 'davidhalter/jedi-vim'
Plugin 'https://github.com/ervandew/supertab.git'
Plugin 'https://github.com/justmao945/vim-clang.git'
Plugin 'https://github.com/freeo/vim-kalisi.git'
Plugin 'https://github.com/easymotion/vim-easymotion.git'

call vundle#end()

source ~/.config/nvim/plugin_config/airline_config.vim
source ~/.config/nvim/plugin_config/nerdtree_config.vim
source ~/.config/nvim/plugin_config/jedi_config.vim
source ~/.config/nvim/plugin_config/riv_config.vim
source ~/.config/nvim/plugin_config/clang_config.vim
source ~/.config/nvim/plugin_config/vim_kalisi_config.vim
source ~/.config/nvim/plugin_config/easymotion_config.vim
