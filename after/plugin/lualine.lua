local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

require("lualine").setup({
    options = {
        disabled_filetypes = {
            winbar = { "neo-tree"},
            statusline = {},
        },
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diagnostics'},
        lualine_c = {{'filename', path=1 }, 'diff'},
        lualine_x = {},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    winbar = {
        lualine_a = {
            {
                "buffers",
                show_modified_status = true,
                use_mode_colors = false,
                symbols = {
                    modified = " ●",
                    alternate_file = "",
                    directory = "",
                },
            }
        },
        lualine_c = {
            {
                "filetype",
                colored = true,
                icon_only = true,
                icon = { align = "left" },
            },
        },
        lualine_y = {},
    },
})

map('n', '<C-.>', '<Cmd>bnext<CR>', opts)
map('n', '<C-,>', '<Cmd>bprevious<CR>', opts)
map('n', '<C-q>', '<Cmd>bprevious<bar>bdelete #<Return><Cr>', opts)
