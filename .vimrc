call plug#begin('~/.local/share/nvim/site/bundle')
    Plug 'rafi/awesome-vim-colorschemes'
    Plug 'vim-airline/vim-airline'
    Plug 'scrooloose/nerdtree'
    Plug 'easymotion/vim-easymotion'
    Plug 'ryanoasis/vim-devicons'
call plug#end()

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

colorscheme minimalist

map <C-n> <esc>:NERDTreeToggle<CR>

let g:airline_powerline_fonts = 1 " Enable support of powerline fonts

