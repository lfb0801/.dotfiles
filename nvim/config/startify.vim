nnoremap <leader>; <cmd>Startify<cr>

let g:startify_lists = [{ 'type': 'commands', 'header': []}]

let g:startify_commands = [
			\ { 'f': ['find file', 'Telescope git_files']},
			\ { 'd': ['open directory', 'NERDTree']},
			\ { 's': ['settings','ex ~/.config/nvim/init.vim']},
			\ ]

let g:startify_enable_special = 0
let g:startify_center = 50
