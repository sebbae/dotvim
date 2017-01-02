set number
set cursorline
set listchars=tab:→\ ,trail:~,extends:>,precedes:<
"set listchars=eol:¬,tab:> ,trail:~,extends:>,precedes:<,space:␣

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Enable syntax highlighting
syntax enable

" Colorscheme
colorscheme desert
set background=light

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" Turn on the Wild menu
"set wildmode=longest:full
set wildmenu

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Helper function for status line
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

