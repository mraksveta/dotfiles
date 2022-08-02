let g:airline_powerline_fonts = 1 " Enable support of powerline fonts

filetype plugin on 
set nocompatible
set relativenumber
set number
set cursorline
set autoindent
set expandtab cindent shiftwidth=4 tabstop=4 softtabstop=4
set ruler
set showcmd
set nowrap
set hlsearch
set encoding=utf-8
set termguicolors

autocmd BufNew,BufRead,BufNewFile *.asm set ft=nasm
