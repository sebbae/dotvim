" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

set path+=**

" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class
set wildignore+=*/.git/*
set wildignore+=*/.svn/*

command! GitIgnore call <SID>SetWildIgnoreFromGitIgnore()
function! <SID>SetWildIgnoreFromGitIgnore()
	let filename = '.gitignore'
	if filereadable(filename)
		let igstring = ''
		for oline in readfile(filename)
			let line = substitute(oline, '\s|\n|\r', '', "g")
			if line =~ '^#' | con | endif
			if line == '' | con  | endif
			if line =~ '^!' | con  | endif
			if line =~ '/\*$' | let igstring .= "," . getcwd() . '/' .line | con | endif
			if line =~ '^/.*/$' | let igstring .= ',' . '*' . line . '*' | con | endif
			if line =~ '/$' | let igstring .= ',' . getcwd() . '/' . line . '*' | con | endif
			let igstring .= "," . substitute(line, ' ', '\\ ', "g")
		endfor
		let execstring = "set wildignore=".substitute(igstring, '^,', '', "g")
		execute execstring
	endif
endfunction

