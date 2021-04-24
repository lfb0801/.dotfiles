nnoremap <C-H> :wincmd h<CR>
nnoremap <C-J> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-L> :wincmd l<CR>

nnoremap <C-b>l :bnext<CR>
nnoremap <C-b>h :bprevious<CR>
nnoremap <C-b>j :bdelete<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <TAB> :bnext<CR>
nnoremap <LEADER><TAB> :bprevious<CR>
nnoremap <DELETE> :bdelete<CR>

map <Leader>t :bo vsplit<cr> :terminal<cr> i
imap <C-E> <cmd>lua require'telescope.builtin'.symbols{ sources = {'emoji', 'kaomoji'} }<cr>
