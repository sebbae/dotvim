" colors for diff
highlight DiffAdd ctermfg=232 ctermbg=194
highlight DiffDelete ctermfg=210 ctermbg=210
highlight DiffChange ctermfg=232 ctermbg=194
highlight DiffText ctermfg=232 ctermbg=112

" show diff of unsaved changes
function! s:DiffFile()
  if &modified
	  let filetype=&ft
	  let l:file = expand("%")
	  let l:origfile = l:file . ".orig"
	  " echom "Using l:file " . l:file
	  " echom "Using l:origfile " . l:origfile
	  set splitright
	  diffthis
	  execute "vnew " . l:origfile
	  execute "read " . l:file 
	  execute "| normal! 1Gdd"
	  diffthis
	  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
	  wincmd w
  else
	  echom "No unsaved changes"
  endif
endfunction
com! DiffFile call s:DiffFile()

