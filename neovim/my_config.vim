highlight Folded ctermbg=234
highlight Folded ctermfg=243
highlight Pmenu ctermbg=233
highlight Pmenu ctermfg=15

let g:mapleader=" "

set omnifunc=syntaxcomplete#Complete

set number
set ruler
set cursorline
set expandtab
set showmatch
set ignorecase
set list listchars=tab:\ \ ,trail:·
set wildmode=full
set termguicolors
set showcmd

"filetype plugin indent on
"autocmd BufEnter * lcd %:p:h

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

nnoremap <C-l> :nohlsearch<CR>
nnoremap <C-p> <C-i>

nnoremap gr gT<CR>
nnoremap <Backspace> ^
hi Normal ctermbg=none
hi Normal cterm=none
hi NonText ctermbg=none
hi Normal guibg=none
hi NonText guibg=none
hi LineBr ctermbg=none
hi LineBr ctermfg=grey
hi LineNr guibg=none
