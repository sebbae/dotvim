set t_Co=256

function s:FixCtrlP()
	if executable('rg')
		"let g:ctrlp_user_command = 'find %s -type f'
		let g:ctrlp_user_command = ''
		let g:ctrlp_use_caching = 1
	endif
endfunction

au VimEnter * call s:FixCtrlP()

