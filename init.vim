" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" One of following
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf'
Plug 'liuchengxu/vim-clap'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }

" Rainbow
Plug 'luochen1990/rainbow'

" Requires
Plug 'guns/vim-sexp',    {'for': 'clojure'}
Plug 'liquidz/vim-iced', {'for': 'clojure'}
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'liquidz/vim-iced-asyncomplete', {'for': 'clojure'}

" OneDark
Plug 'navarasu/onedark.nvim'

" Tree
Plug 'nvim-tree/nvim-web-devicons'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-neo-tree/neo-tree.nvim', { 'branch': 'v2.x' }   

call plug#end()

" Enable vim-iced's default key mapping
" This is recommended for newbies
let g:iced_enable_default_key_mappings = v:true

" Nvim configs
set number

" Rainbow Config
let g:rainbow_active = 1

" Theme
colorscheme onedark

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

" Tree
nnoremap <Leader>nn :Neotree<CR>
