" File: .vimrc
" Author: swogs (james.swoger@gmail.com)
" Last Updated: 

set nocompatible
filetype off

"" Vundle Stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim',{'name':'dracula'}
Plugin 'ap/vim-css-color'
Plugin 'itchyny/lightline.vim'

call vundle#end()
filetype plugin indent on

" UI settings
set number
syntax enable
set showmatch
set showmode

" indentatoin settings
set ai
set tabstop=4

"color options
if has('gui_running')
	set background=dark
	set guifont="Source Code Pro Regular"
else
	set background=dark
endif
colorscheme dracula

let g:lightline = {'colorscheme':'darcula',}
