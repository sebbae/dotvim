" escape from insert mode in terminal buffer
tnoremap <ESC> <C-\><C-n>
tnoremap jj <C-\><C-n>

" fix font resize issue in konsole terminal
if !empty($KONSOLE_DBUS_SESSION)
	set guicursor=
endif
