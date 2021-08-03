let mapleader = " "

source ~/.dotfiles/nvim/config/plugins.vim
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
