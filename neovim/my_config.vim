highlight Folded ctermbg=234
highlight Folded ctermfg=243
highlight Pmenu ctermbg=233
highlight Pmenu ctermfg=15

let g:mapleader=" "

set omnifunc=syntaxcomplete#Complete

set number
set ruler
set cursorline

set ts=4
set expandtab
set shiftwidth=4

set showmatch
set ignorecase

set list listchars=tab:\ \ ,trail:·
set wildmode=full
set autochdir
set showcmd

nnoremap <S-t> :tabnew<CR>
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

nnoremap gr gT<CR>
nnoremap <Backspace> ^
