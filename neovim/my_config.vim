highlight Folded ctermbg=234
highlight Folded ctermfg=243
highlight Pmenu ctermbg=233
highlight Pmenu ctermfg=15

let g:mapleader=" "

" set omnifunc=syntaxcomplete#Complete

set number
set ruler
set expandtab
set showmatch
set ignorecase
set list listchars=tab:\ \ ,trail:·
set wildmode=full
set termguicolors
set showcmd
noswapfile

filetype on
filetype plugin on
filetype plugin indent on

nnoremap <leader>w :w<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <leader>1 yiw :Ag! <C-r>0<CR>
nnoremap Z zt

" windows
" ------------------------------------------------->
" split
nnoremap <silent> <leader>v <C-w>v<C-w>l
nnoremap <silent> <leader>s <C-w>s<C-w>j
nnoremap <silent> <leader>o <C-w>s<C-w>j
" move
nnoremap <silent> mwh <C-W>H
nnoremap <silent> mwj <C-W>J
nnoremap <silent> mwk <C-W>K
nnoremap <silent> mwl <C-W>L
" focus
nnoremap <silent> <leader>h <C-W>h
nnoremap <silent> <leader>j <C-W>j
nnoremap <silent> <leader>k <C-W>k
nnoremap <silent> <leader>l <C-W>l
" resize
nnoremap <silent> + :vertical resize +10<CR>
nnoremap <silent> - :vertical resize -10<CR>
" <------------------------------------------------- "

" tabs
" -------------------------------------------------> "
nnoremap <silent> <leader>m :tabedit %<CR>
nnoremap <silent> mth :tabmove -1<CR>
nnoremap <silent> mtl :tabmove +1<CR>
nnoremap gr gT
" <------------------------------------------------- "

" cursor
" -------------------------------------------------> "
" move
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
nnoremap <Backspace> ^

" move line
nnoremap <silent> <C-j> :m .+1<CR>
vnoremap <silent> <C-j> :m '>+1<CR>gv=gv
" move selection
nnoremap <silent> <C-k> :m .-2<CR>
vnoremap <silent> <C-k> :m '<-2<CR>gv=gv

" insert empty line above/below
nnoremap <leader>[ mmO<ESC>'m
nnoremap <leader>] mmo<ESC>'m

" scroll up/down
nnoremap <S-j> <C-e>
nnoremap <S-k> <C-y>

" clear
nnoremap <silent> <C-l> :nohlsearch<CR>

" buffers
" -------------------------------------------------> "
nnoremap <silent> gj :bp<CR>
nnoremap <silent> gk :bn<CR>
" <------------------------------------------------- "

" jump
" -------------------------------------------------> "
nnoremap <C-p> <C-i>
" cnext/cprevious, lnext, lprevious
nnoremap <leader>cn :cn<CR>
nnoremap <leader>cp :cp<CR>
nnoremap <leader>n :lnext<CR>
nnoremap <leader>p :lprevious<CR>
" <------------------------------------------------- "

hi Normal ctermbg=none
hi Normal cterm=none
hi NonText ctermbg=none
hi Normal guibg=none
hi NonText guibg=none
hi LineBr ctermbg=none
hi LineBr ctermfg=grey
hi LineNr guibg=none

nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>
autocmd FileType qf nnoremap <buffer> t <C-W><Enter><C-W>T
map <leader>2 <leader>v<leader>d
