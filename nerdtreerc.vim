map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

" Close NERDTree after open
let NERDTreeQuitOnOpen=1

" Open files in new tab.
"let NERDTreeMapOpenInTab='<Enter>'
