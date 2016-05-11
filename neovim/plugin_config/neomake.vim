let g:neomake_javascript_enabled_marker = {
      \'exe': 'eslint',
      \'args': [],
      \'errorformat': '%f:%l:%c: %m',
      \}

autocmd BufWrite *.js Neomake eslint
