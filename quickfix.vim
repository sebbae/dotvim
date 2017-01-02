nnoremap <silent> <Nul> :call QuickfixToggle()<CR>

let g:quickfix_is_open = 0

function! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
endfunction

augroup MyQFCommand 
au! 
au FileType qf nnoremap <silent> <buffer> <CR> <CR>:call QuickfixToggle()<CR>
augroup END 