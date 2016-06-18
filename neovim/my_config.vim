highlight Folded ctermbg=234
highlight Folded ctermfg=243
highlight Pmenu ctermbg=233
highlight Pmenu ctermfg=15

let g:mapleader=" "

set omnifunc=syntaxcomplete#Complete

set number
set ruler
set expandtab
set showmatch
set ignorecase
set list listchars=tab:\ \ ,trail:·
set wildmode=full
set termguicolors
set showcmd

"filetype plugin indent on
"autocmd BufEnter * lcd %:p:h

nnoremap <leader>w :w<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <leader>1 yiw :Ag! <C-r>0<CR>
nnoremap Z zt

" windows
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

" tabs
nnoremap <silent> <leader>m :tabedit %<CR>
nnoremap <silent> mth :tabmove -1<CR>
nnoremap <silent> mtl :tabmove +1<CR>

inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

nnoremap <silent> <C-j> :m .+1<CR>
vnoremap <silent> <C-j> :m '>+1<CR>gv=gv
nnoremap <silent> <C-k> :m .-2<CR>
vnoremap <silent> <C-k> :m '<-2<CR>gv=gv

nnoremap <leader>[ mmO<ESC>'m
nnoremap <leader>] mmo<ESC>'m

nnoremap <S-j> <C-e>
nnoremap <S-k> <C-y>

nnoremap <silent> <C-l> :nohlsearch<CR>
nnoremap <C-p> <C-i>

nnoremap gr gT
nnoremap <Backspace> ^

nnoremap <leader>n :cn<CR>
nnoremap <leader>p :cp<CR>

hi Normal ctermbg=none
hi Normal cterm=none
hi NonText ctermbg=none
hi Normal guibg=none
hi NonText guibg=none
hi LineBr ctermbg=none
hi LineBr ctermfg=grey
hi LineNr guibg=none

nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>
noswapfile
