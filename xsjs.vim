autocmd BufNewFile,BufRead *.xsjs*   set syntax=javascript
autocmd BufWritePre *.xsjs* :DeleteTrailingWS
