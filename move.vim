" Set n lines to the cursor - when moving vertically using j/k
set so=0

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Remap VIM 0 to first non-blank character
map 0 ^

nnoremap ü {
nnoremap ä }
nnoremap Ü [[
nnoremap Ä ]]
