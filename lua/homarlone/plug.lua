local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')

-- Fuzzy
Plug 'junegunn/fzf'

-- Vim Iced
Plug ('guns/vim-sexp',    { ['for']= 'clojure' })
Plug ('liquidz/vim-iced', { ['for']= 'clojure' })

-- Telescope
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { brach= '0.1.5' })

-- OneDark
Plug 'navarasu/onedark.nvim'

-- Rainbow
Plug 'luochen1990/rainbow'

-- Neo Tree
Plug 'nvim-tree/nvim-web-devicons'
Plug 'MunifTanjim/nui.nvim'
Plug ('nvim-neo-tree/neo-tree.nvim', { branch= 'v2.x' })

-- Treesitter
Plug ('nvim-treesitter/nvim-treesitter', { ['do']= ':TSUpdate'})

-- Lsp Zero
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug ('VonHeikemen/lsp-zero.nvim', { branch= 'v3.x'})
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

-- ToggleTerm
Plug ('akinsho/toggleterm.nvim', { tag= '*' })

-- Signify
Plug 'mhinz/vim-signify'

-- Comment
Plug 'numToStr/Comment.nvim'

--- Formatter
Plug 'mhartington/formatter.nvim'

--- BarBar
Plug 'romgrk/barbar.nvim'

--- GitSigns
Plug 'lewis6991/gitsigns.nvim'

vim.call('plug#end')

