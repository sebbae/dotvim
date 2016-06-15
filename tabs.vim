" Navigate tabs
nnoremap <A-Down> :tabprevious<CR>
nnoremap <A-Up> :tabnext<CR>

" Reorder tabs
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" Specify the behavior when switching between buffers 
" try
"  set switchbuf=useopen,usetab,newtab
"  set stal=2
" catch
" endtry

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

