setlocal shiftwidth=2
let g:tern_request_timeout = 1

nnoremap <silent> <leader>dd :TernDef<CR>
nnoremap <silent> <leader>rr :TernRefs<CR>

let g:javascript_enable_domhtmlcss = 1
let g:jsx_ext_required = 0
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"

setlocal omnifunc=javascriptcomplete#CompleteJS
