let g:syntastic_javascript_checkers = []
" search eslint config file in ancestor path of current file
" requires eslint executable to be available: `npm install -g eslint`
autocmd FileType javascript let b:syntastic_checkers = syntastic#util#findFileInParent('.eslintrc', expand('%:p:h', 1)) !=# '' ? ['eslint'] : []
