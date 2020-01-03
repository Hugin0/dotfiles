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
colorscheme gruvbox
