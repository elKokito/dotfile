" javascript settings
" let g:neomake_javascript_enabled_marker = {
      " \'exe': 'eslint',
      " \'args': [],
      " \'errorformat': '%f:%l:%c: %m',
      " \}

" let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
" let g:neomake_javascript_eslint_exe = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

" autocmd BufWrite *.js Neomake eslint


" " typescript settings
" let g:neomake_typescript_enabled_marker = {
      " \'exe': ['tslint', 'tsc'],
      " \'args': [],
      " \'errorformat': '%f:%l:%c: %m',
      " \}

" let s:tslint_path = system('PATH=$(npm bin):$PATH && which tslint')
" let g:neomake_typescript_tslint_exe = substitute(s:tslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

" autocmd BufWrite *.ts Neomake tslint



" " jsx settings
" let g:neomake_open_list=0
" let g:neomake_jsx_enabled_makers = ['eslint']
" autocmd BufWrite *.jsx Neomake eslint

" " python settings
" " let g:neomake_python_enabled_marker = {
                  " " \'exe': ['pylint, flake8'],
                  " " \'args': [],
                  " " \'errorformat': '%f:%l%c: %m',
                  " " \}

" if executable('pylint')
autocmd BufWrite *.py Neomake pylint
" endif
