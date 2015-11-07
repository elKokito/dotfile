"let g:python3_host_prog = '/usr/bin/python3'
"let g:python_host_prog = '/usr/bin/python3'

filetype plugin indent on
filetype plugin on
filetype indent on
syntax on

highlight Folded ctermbg=234
highlight Folded ctermfg=243
highlight Pmenu ctermbg=233
highlight Pmenu ctermfg=15

let g:rehash256 = 1
let g:mapleader = " "

set number
set autochdir
set ruler
set ts=4
set expandtab
set shiftwidth=4
set cursorline
set showmatch
set ignorecase
set showcmd
set list listchars=tab:\ \ ,trail:·
set nofoldenable
set wildmode=full

nnoremap <S-t> :tabnew<CR>
nnoremap <S-h> :tabprevious<CR>
nnoremap <S-l> :tabnext<CR>
nnoremap + :vertical resize +10<CR>
nnoremap - :vertical resize -10<CR>

inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

nnoremap <C-j> :m .+1<CR>
vnoremap <C-j> :m '>+1<CR>gv=gv
nnoremap <C-k> :m .-2<CR>
vnoremap <C-k> :m '<-2<CR>gv=gv

nnoremap <leader>[ mmO<ESC>'m
nnoremap <leader>] mmo<ESC>'m

nnoremap <S-j> <C-e>
nnoremap <S-k> <C-y>

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>r :so %<CR>
nnoremap <C-l> :nohlsearch<CR>
