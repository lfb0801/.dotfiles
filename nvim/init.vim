let mapleader = " "
colorscheme gruvbox

call plug#begin("~/.config/nvim/plugged")
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'chrisbra/vim-commentary'
Plug 'rstacruz/vim-closer'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-symbols.nvim'
Plug 'mhinz/vim-startify', {'branch': 'center'}
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
call plug#end()

source ~/.dotfiles/nvim/config/shortcuts.vim
source ~/.dotfiles/nvim/config/settings.vim
source ~/.dotfiles/nvim/config/startify.vim
source ~/.dotfiles/nvim/config/ranger.vim
source ~/.dotfiles/nvim/config/telescope.vim

" AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='simple'

" open Undotree 
nnoremap <leader>u :UndotreeShow<CR>

" COC
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> <C-M> :CocAction<CR>

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
