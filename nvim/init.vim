let mapleader = " "
colorscheme gruvbox

call plug#begin("~/.config/nvim/plugged")
Plug 'pechorin/any-jump.vim'
Plug 'mhinz/vim-signify'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'gruvbox-community/gruvbox'
Plug 'mbbill/undotree'
Plug 'chrisbra/vim-commentary'
Plug 'rstacruz/vim-closer'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-symbols.nvim'
Plug 'mhinz/vim-startify', {'branch': 'center'}
Plug 'rbgrouleff/bclose.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'simeji/winresizer'
Plug 'AndrewRadev/splitjoin.vim', {'branch': 'java-support'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

source ~/.dotfiles/nvim/config/shortcuts.vim
source ~/.dotfiles/nvim/config/settings.vim
source ~/.dotfiles/nvim/config/startify.vim
source ~/.dotfiles/nvim/config/telescope.vim
source ~/.dotfiles/nvim/config/coc.vim
source ~/.dotfiles/nvim/config/autoclosing.vim
source ~/.dotfiles/nvim/config/nerdtree.vim
source ~/.dotfiles/nvim/config/any-jump.vim
source ~/.dotfiles/nvim/config/fugitive.vim

" AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme= 'dark'

" default updatetime 4000ms is not good for async update
set updatetime=500
