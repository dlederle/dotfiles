" Liberally stolen from https://github.com/spf13/spf13-vim/blob/master/.vimrc
set nocompatible 		" must be first line
set background=dark     " Assume a dark background
filetype plugin indent on  	" Automatically detect file types.
syntax on 					" syntax highlighting
set linespace=0					" No extra spaces between rows
set nu							" Line numbers on
set showmatch					" show matching brackets/parenthesis
set incsearch					" find as you type search
set hlsearch					" highlight search terms
set nowrap                     	" wrap long lines
set autoindent                 	" indent at the same level of the previous line
set expandtab 	  	     		" tabs are spaces, not tabs
"set shiftwidth=2               	" use indents of 2 spaces
"set tabstop=2 					" an indentation every four columns
"set softtabstop=2 				" let backspace delete indent
set matchpairs+=<:>            	" match, to be used with % 
set pastetoggle=<F12>          	" pastetoggle (sane indentation on pastes)
set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks

call pathogen#infect()
