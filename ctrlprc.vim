" Open in new tab
"let g:ctrlp_prompt_mappings = {
"    \ 'AcceptSelection("e")': ['<c-t>'],
"    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
"    \ }

" set regexp search as the default
let g:ctrlp_regexp = 1

if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
