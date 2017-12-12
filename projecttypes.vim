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

	autocmd BufNewFile,BufRead *.xsjs   set syntax=javascript
	autocmd BufNewFile,BufRead *.xsjslib   set syntax=javascript
	autocmd BufNewFile,BufRead *.xsjs   set filetype=javascript
	autocmd BufNewFile,BufRead *.xsjslib   set filetype=javascript
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

command! ProjectTypeNode call <SID>SetProjectTypeNode()
function! <SID>SetProjectTypeNode()
	let wildignore_exec='set wildignore='
	let wildignore_exec.=getcwd() . '/node_modules/*'
	echom wildignore_exec
	execute wildignore_exec

	set path=.,src/**,,

	let g:ctrlp_custom_ignore = {
		\ 'dir'  : getcwd() . '\v[\/](node_modules)$',
		\ 'file' : '\.tmp'
		\ }
endfunction
