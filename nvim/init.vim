let mapleader = " "
call plug#begin("~/.config/nvim/plugged")

" COLORSCHEMES
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

Plug 'mbbill/undotree'

Plug 'chrisbra/vim-commentary'
Plug 'rstacruz/vim-closer'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" TELESCOPE
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-symbols.nvim'

" STARTIFY
Plug 'mhinz/vim-startify', {'branch': 'center'}

" RANGER
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

call plug#end()

colorscheme gruvbox
set guicursor=
set nohls hidden noerrorbells
set ts=2 sts=2 sw=2
set si nu nowrap sc
set noswapfile nobackup
set undofile undodir=~/.config/nvim/undodir
set incsearch noshowmode
set scrolloff=10
set completeopt=menuone,noinsert,noselect

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='simple'
let g:netrw_liststyle= 3

" SHORTCUTS
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <C-b>l :bnext<CR>
nnoremap <C-b>h :bprevious<CR>
nnoremap <C-b>j :bdelete<CR>
nnoremap <C-b>k :Telescope buffers<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" open Undotree 
nnoremap <leader>u :UndotreeShow<CR>

" vim-powered terminal in split window
map <Leader>t :bo vsplit<cr> :terminal<cr> i

" TELESCOPE
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope git_files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>ts <cmd>Telescope treesitter<cr>
nnoremap <leader>fh <cmd>Telescope builtin<cr>

imap <C-E> <cmd>lua require'telescope.builtin'.symbols{ sources = {'emoji', 'kaomoji'} }<cr>

" COC
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)

" STARTIFY
nnoremap <leader>; <cmd>Startify<cr>
autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif

let g:startify_lists = [{ 'type': 'commands', 'header': []}]

let g:startify_commands = [
        \ { 'f': ['find file', 'Telescope git_files']},
        \ { 'r': ['open ranger', 'Ranger']},
				\ { 's': ['settings','ex ~/.config/nvim/init.vim']},
				\ ]

let g:startify_enable_special = 0
let g:startify_center = 50

" RANGER
nmap <leader>r <cmd>RangerCurrentDirectory<cr>
let g:ranger_replace_netrw = 1
