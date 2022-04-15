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

" 1. Avoid writing to ~/.viminfo while editing
autocmd BufReadPre,FileReadPre *.gpg set viminfo=
autocmd BufReadPre,FileReadPre *.gpg set noswapfile noundofile nobackup

" 2. FileReadPre: switch to binary mode when reading
" Switch to binary mode to read the encrypted file
autocmd BufReadPre,FileReadPre *.gpg set bin
autocmd BufReadPre,FileReadPre *.gpg let ch_save = &ch|set ch=2

" 3. FileReadPost: switch to normal mode for editing
autocmd BufReadPost,FileReadPost *.gpg '[,']!gpg --decrypt --no-use-agent 2> /dev/null
autocmd BufReadPost,FileReadPost *.gpg set nobin
autocmd BufReadPost,FileReadPost *.gpg let &ch = ch_save|unlet ch_save
autocmd BufReadPost,FileReadPost *.gpg execute ":doautocmd BufReadPost " . expand("%:r")

" 4. FileWritePre: encrypt text before writing
autocmd BufWritePre,FileWritePre *.gpg '[,']!gpg --armor --symmetric --no-use-agent --yes --cipher-algo AES256 2>/dev/null
autocmd BufWritePost,FileWritePost *.gpg u

map <C-n> <esc>:NERDTreeToggle<CR>

let g:airline_powerline_fonts = 1 " Enable support of powerline fonts

