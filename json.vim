command! FormatJSON call <SID>FormatJSON()
function! <SID>FormatJSON()
	:%!python3 -m json.tool
endfunction)

"autocmd FileType json autocmd BufWritePre <buffer> FormatJSON
