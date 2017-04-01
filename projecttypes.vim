command! ProjectTypeXS call <SID>SetProjectTypeXS()
function! <SID>SetProjectTypeXS()
	let wildignore_exec='set wildignore='
	let wildignore_exec.=getcwd() . '/target/*'
	let wildignore_exec.=getcwd() . '/import/*'
	let wildignore_exec.=getcwd() . '/node_modules/*'
	let wildignore_exec.=getcwd() . '/gen/*'
	echom wildignore_exec
	execute wildignore_exec

	set path=.,src/**,,

	let g:ctrlp_custom_ignore = {
		\ 'dir'  : getcwd() . '\v[\/](\.git|target|import|node_modules|gen)$',
		\ 'file' : '\.tmp'
		\ }
endfunction

command! ProjectTypeRust call <SID>SetProjectTypeRust()
function! <SID>SetProjectTypeRust()
	let wildignore_exec='set wildignore='
	let wildignore_exec.=getcwd() . '/target/*'
	echom wildignore_exec
	execute wildignore_exec

	set path=.,src/**,,

	let g:ctrlp_custom_ignore = {
		\ 'dir'  : getcwd() . '\v[\/](\.git|target)$',
		\ 'file' : '\.tmp'
		\ }
endfunction
