let mapleader = " "
colorscheme gruvbox

call plug#begin("~/.config/nvim/plugged")
Plug 'AndrewRadev/splitjoin.vim', {'branch': 'java-support'}
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
