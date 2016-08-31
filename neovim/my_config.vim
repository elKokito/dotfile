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
tnoremap <silent> <C-h> <C-\><C-n><C-W>h
tnoremap <silent> <C-l> <C-\><C-n><C-W>l
" resize
nnoremap <silent> + :vertical resize +2<CR>
nnoremap <silent> - :vertical resize -2<CR>
" <------------------------------------------------- "

" tabs
" -------------------------------------------------> "
nnoremap <silent> <leader>m <C-W>v<C-W>l<C-W>T
nnoremap <silent> mth :tabmove -1<CR>
nnoremap <silent> mtl :tabmove +1<CR>
nnoremap gr gT
inoremap <silent> <C-l> <C-PageDown>
nnoremap <silent> <C-l> gt
inoremap <silent> <C-h> <C-PageUp>
nnoremap <silent> <C-h> gT
" <------------------------------------------------- "

" cursor
" -------------------------------------------------> "
" move
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
nnoremap <silent> <return> :nohlsearch<CR>

" buffers
" -------------------------------------------------> "
nnoremap <silent> gj :bp<CR>
nnoremap <silent> gk :bn<CR>
" <------------------------------------------------- "

" jump
" -------------------------------------------------> "
nnoremap <C-p> <C-i>
" cnext/cprevious, lnext, lprevious
map <leader>cn :cn<CR>
map <leader>cp :cp<CR>
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

nnoremap <leader>0 :source ~/.config/nvim/init.vim<CR>
autocmd FileType qf nnoremap <buffer> t <C-W><Enter><C-W>T
map <leader>ds <C-W>v<C-W>l<leader>ddzz
map <leader>dt <C-W>v<C-W>l<C-W>T<leader>ddzz

highlight DiffAdd guifg=green guibg=None
highlight DiffDelete guifg=red guibg=None
highlight DiffChange guifg=orange guibg=None


" testing "
au BufLeave * call ModeSelectBufLeave()
au BufEnter * call ModeSelectBufEnter()

function! ModeSelectBufLeave()
    let b:mode_select_mode = mode()
    " A more complex addition you could make: if mode() == v, V, <C-V>, s, S, or <C-S>, store the selection and restore it in ModeSelectBufEnter
endfunction

function! ModeSelectBufEnter()
    let l:mode = mode()
    stopinsert  " First, go into normal mode
    if (l:mode == "i" || l:mode == "R" || l:mode == "Rv") && 
    \       (!exists('b:mode_select_mode') ||
    \       b:mode_select_mode == "n" ||
    \       b:mode_select_mode == "v" ||
    \       b:mode_select_mode == "V" ||
    \       b:mode_select_mode == "\<C-V>" ||
    \       b:mode_select_mode == "s" ||
    \       b:mode_select_mode == "S" ||
    \       b:mode_select_mode == "\<C-S>")
        normal l
        " Compensate for the left cursor shift in stopinsert if going from an
        " insert mode to a normal mode
    endif
    if !exists('b:mode_select_mode')
        return
    elseif b:mode_select_mode == "i"
        startinsert!
    elseif b:mode_select_mode == "R"
        startreplace
    elseif b:mode_select_mode == "Rv"
        startgreplace
    endif
endfunction
