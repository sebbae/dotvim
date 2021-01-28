let g:syntastic_javascript_checkers = []
" search eslint config file in ancestor path of current file
" requires eslint executable to be available: `npm install -g eslint`
" Note: Using glob() instead of syntastic#util#findFileInParent() to support wildcard search for different .eslint config file types
autocmd FileType javascript let b:syntastic_checkers = glob('.eslintrc*', expand('%:p:h', 1)) !=# '' ? ['eslint'] : []
