nnoremap <C-H> :wincmd h<CR>
nnoremap <C-J> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-L> :wincmd l<CR>

nnoremap <LEADER>v :vsplit<CR>
nnoremap <LEADER>h :bo split<CR>
nnoremap <C-Q> :close<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
nnoremap <DELETE> :bdelete<CR>

nnoremap <LEADER>t :bo vsplit<CR> :terminal<CR> i
tnoremap <ESC> <C-\><C-N>
tnoremap <DELETE> <C-\><C-N> :bd!<CR> :q<CR>

imap <C-E> <CMD>lua require'telescope.builtin'.symbols{ sources = {'emoji', 'kaomoji'} }<CR>

nnoremap ; :
nnoremap : ;

" open Undotree
nnoremap <leader>u :UndotreeShow<CR>

nnoremap <silent> (s :SplitjoinSplit<cr>
nnoremap <silent> (j :SplitjoinJoin<cr>
