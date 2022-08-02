call plug#begin('~/.local/share/nvim/site/bundle')
    " LSP config
    Plug 'neovim/nvim-lspconfig'

    " Improve LSP, buffer, cmdline, path, etc completion
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    " Easy installing LSP servers
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    
    " Beautiful LSP popup menu
    Plug 'tami5/lspsaga.nvim'

    " For snippets
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'

    " This tiny plugin adds vscode-like pictograms to neovim built-in lsp
    Plug 'onsails/lspkind-nvim'   

    " Beautiful status bar
    Plug 'vim-airline/vim-airline'

    " Commentary support
    Plug 'tpope/vim-commentary'

    " File system tree
    Plug 'scrooloose/nerdtree'

    " Beautiful icons
    Plug 'ryanoasis/vim-devicons'

    " popup, finder
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'

    " Improved syntax highlight
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Insert or delete brackets, parens, quotes in pair.
    Plug 'jiangmiao/auto-pairs'

    " Funny start screen
    Plug 'mhinz/vim-startify'

    " Themes
    Plug 'rafi/awesome-vim-colorschemes'

    " Git wrapper
    Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme molokai
