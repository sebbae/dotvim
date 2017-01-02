" A buffer becomes hidden when it is abandoned
set hidden

" Navigate buffers
nnoremap <C-Left> :bprev<CR>
nnoremap <C-Right> :bnext<CR>

" Close the current buffer
map <leader>bd :Bclose<CR>
map <C-W> :Bclose<CR>

" Close all the buffers
map <leader>ba :1,1000 bd!<CR>

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:currentBufNum) && getbufvar(l:currentBufNum, "&mod") 
	   echohl ErrorMsg
	   echo bufname(l:currentBufNum).' is modified'
	   echohl None
	   return 1
   endif

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete ".l:currentBufNum)
   endif
endfunction
