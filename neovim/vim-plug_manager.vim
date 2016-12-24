function! DoRemote(arg)
    UpdateRemotePlugins
endfunction

call plug#begin("~/.config/nvim/plugged")

Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

" python
Plug 'https://github.com/nvie/vim-flake8.git'
Plug 'https://github.com/davidhalter/jedi-vim.git'
Plug 'zchee/deoplete-jedi'
Plug 'hynek/vim-python-pep8-indent'
Plug 'pearofducks/ansible-vim'

" javascript && typescript
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/mxw/vim-jsx.git'
Plug 'https://github.com/Quramy/tsuquyomi.git'
" Plug 'carlitux/deoplete-ternjs'
" Plug 'https://github.com/ternjs/tern_for_vim.git'

" C/C++
Plug 'zchee/deoplete-clang'

" markdown
Plug 'dhruvasagar/vim-table-mode'

" git
Plug 'airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-fugitive.git'

" maker
Plug 'https://github.com/benekastah/neomake.git'

"tags
" Plug 'majutsushi/tagbar'

" neovim enhancement
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/tpope/vim-sleuth.git'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/wellle/targets.vim.git'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mtth/scratch.vim'

" themes && colors
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
source ~/.config/nvim/plugin_config/neomake.vim
source ~/.config/nvim/plugin_config/fzf.vim
source ~/.config/nvim/plugin_config/gitgutter.vim
source ~/.config/nvim/plugin_config/cpp.vim
source ~/.config/nvim/plugin_config/deoplete.vim
source ~/.config/nvim/plugin_config/tagbar.vim
source ~/.config/nvim/plugin_config/scratch.vim
