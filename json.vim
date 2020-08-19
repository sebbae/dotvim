command! FormatJSON call <SID>FormatJSON()
function! <SID>FormatJSON()
	:%!python -m json.tool
endfunction)

"autocmd FileType json autocmd BufWritePre <buffer> FormatJSON
