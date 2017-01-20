" Insert line in normal mode
"nmap <S-Enter> O<Esc>j
"nmap <CR> o<Esc>k

" Moving lines/blocks up down
inoremap <A-Down> <Esc>:m .+1<CR>==gi
nnoremap <A-Up> :m .-2<CR>==
nnoremap <A-Down> :m .+1<CR>==
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Up> :m '<-2<CR>gv=gv
vnoremap <A-Down> :m '>+1<CR>gv=gv

" Cut&Paste
inoremap <C-V> <Esc>"+gPi

" Exit insert mode with jj
inoremap jj <Esc>

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
inoremap <expr> ( ConditionalPairMap('(', ')')
inoremap <expr> { ConditionalPairMap('{', '}')
inoremap <expr> [ ConditionalPairMap('[', ']')
inoremap <expr> " ConditionalPairMap('"', '"')
inoremap <expr> ' ConditionalPairMap('\'', '\'')
