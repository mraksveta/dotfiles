call plug#begin('~/.local/share/nvim/site/bundle')
    Plug 'rafi/awesome-vim-colorschemes'
    Plug 'vim-airline/vim-airline'
    Plug 'scrooloose/nerdtree'
    " Plug 'easymotion/vim-easymotion'
    Plug 'ryanoasis/vim-devicons'

    Plug 'tpope/vim-commentary'
    Plug 'ycm-core/YouCompleteMe'
    Plug 'neovimhaskell/haskell-vim'
    "  Plug 'terryma/vim-multiple-cursors'
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

colorscheme sonokai

map <C-n> <esc>:NERDTreeToggle<CR>
nnoremap gd :YcmCompleter GoTo<CR>
autocmd BufNew,BufRead,BufNewFile *.asm set ft=nasm " Kindane, hehe

let g:airline_powerline_fonts = 1 " Enable support of powerline fonts

