" Enable filetype plugins
filetype plugin on
filetype indent on

" Sets how many lines of history VIM has to remember
set history=700

" Set to auto read when a file is changed from the outside
set autoread

" Disable file change history
set nobackup
set nowb
set noswapfile

" Leader key
let mapleader = ","
let g:mapleader = ","

" Easy access to command mode
nmap <Space> :

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set linebreak
set textwidth=500
set autoindent
set smartindent
set wrap

command! DeleteTrailingWS call <SID>DeleteTrailingWS()
func! <SID>DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

