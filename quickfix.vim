let g:quickfix_is_open = 0

command! ToggleQuickfixWindow call <SID>QuickfixToggle()
function! <SID>QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    elseif len(getqflist())
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
	else
		echo "Empty quickfix list"
    endif
endfunction

" <NUL> = Ctrl+Space
nnoremap <silent> <NUL> :ToggleQuickfixWindow<CR>
nnoremap <C-Space> :ToggleQuickfixWindow<CR>
