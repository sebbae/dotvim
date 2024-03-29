" Insert line in normal mode
"nmap <S-Enter> O<Esc>j
"nmap <CR> o<Esc>k

set pastetoggle=<F2>

" Moving lines/blocks up down
inoremap <A-Down> <Esc>:m .+1<CR>==gi
nnoremap <A-Up> :m .-2<CR>==
nnoremap <A-Down> :m .+1<CR>==
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Up> :m '<-2<CR>gv=gv
vnoremap <A-Down> :m '>+1<CR>gv=gv

" Cut&Paste
inoremap <C-V> <Esc>"+gPi

" Toggle paste mode
set pastetoggle=<leader>p

" Exit insert mode with jj
inoremap jj <Esc>l

" Exit visual mode with space
vnoremap <Space> <Esc>

" Define wrap command
command! -nargs=* Wrap set wrap linebreak nolist

command! UseIndentWithSpaces2 call <SID>UseIndentWithSpaces2()
function! <SID>UseIndentWithSpaces2()
	set expandtab ts=2 sw=2 ai
endfunction

command! UseIndentWithSpaces4 call <SID>UseIndentWithSpaces4()
function! <SID>UseIndentWithSpaces4()
	set expandtab ts=4 sw=4 ai
endfunction

command! UseIndentWithTab2 call <SID>UseIndentWithTab2()
function! <SID>UseIndentWithTab2()
	set noexpandtab ts=2 sw=2 ai
endfunction

command! UseIndentWithTab4 call <SID>UseIndentWithTab4()
function! <SID>UseIndentWithTab4()
	set noexpandtab ts=4 sw=4 ai
endfunction

" Auto-complete parentheses etc.
function! ConditionalPairMap(open, close)
  let line = getline('.')
  let col = col('.')
  if col < col('$') || stridx(line, a:close, col + 1) != -1
    return a:open
  else
    return a:open . a:close . repeat("\<left>", len(a:close))
  endif
endf
" inoremap <expr> ( ConditionalPairMap('(', ')')
" inoremap <expr> { ConditionalPairMap('{', '}')
" inoremap <expr> [ ConditionalPairMap('[', ']')
" inoremap <expr> " ConditionalPairMap('"', '"')
" inoremap <expr> ' ConditionalPairMap("'", "'")
