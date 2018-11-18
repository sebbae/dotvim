set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off " Vundle needs this to be switched off before loading

if !empty("bundle/Vundle.vim")
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'scrooloose/syntastic'
	Plugin 'scrooloose/nerdtree'
	Plugin 'ctrlpvim/ctrlp.vim'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'tpope/vim-fugitive'
	Plugin 'tpope/vim-surround'
	Plugin 'tpope/vim-commentary'
	Plugin 'rust-lang/rust.vim'
	Plugin 'fatih/vim-go'
	Plugin 'morhetz/gruvbox'
	if has('nvim')
		Plugin 'autozimu/LanguageClient-neovim'
		Plugin 'junegunn/fzf'
		Plugin 'junegunn/fzf.vim'
		Plugin 'Shougo/deoplete.nvim'
	endif
	call vundle#end()
else
	echom "Missing Vundle plugin! Clone repository and run :PluginInstall"
	echom "git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
endif

function! SetPluginOptionsNow()
	if exists(":CtrlP")
		source ~/.vim/ctrlprc.vim
	endif
	if exists(":NERDTreeToggle")
		source ~/.vim/nerdtreerc.vim
	endif
	if exists(":SyntasticCheck")
		source ~/.vim/rust.vim
		source ~/.vim/javascript.vim
	endif
	if exists("")
		source ~/.vim/deoplete.vim
	endif
endfunction

au VimEnter * call SetPluginOptionsNow()

source ~/.vim/general.vim
source ~/.vim/files.vim
source ~/.vim/display.vim
source ~/.vim/buffers.vim
source ~/.vim/windows.vim
source ~/.vim/edit.vim
source ~/.vim/move.vim
source ~/.vim/search.vim
source ~/.vim/spell.vim
source ~/.vim/diff.vim
source ~/.vim/quickfix.vim
if has("win32unix")
	source ~/.vim/cygwin.vim
	source ~/.vim/conemu.vim
endif
source ~/.vim/airlinerc.vim
source ~/.vim/gruvbox.vim
source ~/.vim/projecttypes.vim
source ~/.vim/xsjs.vim
source ~/.vim/markdown.vim
if !empty(glob("~/.vim/local.vim"))
	source ~/.vim/local.vim
endif

