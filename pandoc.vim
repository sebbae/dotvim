if executable("pandoc")
	command! CompileToHTML !pandoc % -o %:r . '.pdf' 
endif
