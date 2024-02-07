return {
    {  
        "rebelot/kanagawa.nvim",
        lazy = false, 
        priority = 1000, 
        config = function()
            vim.cmd([[colorscheme kanagawa]])
        end,
    },
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end,
    },
    {
        'liquidz/vim-iced',
        ft = {'clojure'},
        config = function() 
            vim.g.iced_enable_default_key_mappings = true
        end,
    },
    {
        'guns/vim-sexp',
        ft = {'clojure'}
    },
    "junegunn/fzf",
}
