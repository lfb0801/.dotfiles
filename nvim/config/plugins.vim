call plug#begin("~/.config/nvim/plugged")

Plug 'AndrewRadev/splitjoin.vim'
Plug 'chrisbra/vim-commentary'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify', {'branch': 'center'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope-symbols.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'pechorin/any-jump.vim'
Plug 'preservim/nerdtree'
Plug 'rbgrouleff/bclose.vim'
Plug 'rstacruz/vim-closer'
Plug 'simeji/winresizer'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'

call plug#end()
