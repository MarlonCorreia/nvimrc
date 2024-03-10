local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

return {
    'nvim-lualine/lualine.nvim',
    config = function()
        require("lualine").setup({
            options = {
                disabled_filetypes = {
                    winbar = { "neo-tree"},
                    statusline = {},
                },
                ignore_focus = {
                    "dapui_watches", "dapui_breakpoints",
                    "dapui_scopes", "dapui_console",
                    "dapui_stacks", "dap-repl"
                },
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diagnostics'},
                lualine_c = {
                    {

                        function()
                            local path = vim.fn.expand('%:p:h')
                            local folders = vim.fn.split(path, '/')
                            return folders[#folders]
                        end,
                        icon = '',
                        separator = '/',
                        padding = {left=1, right=0},

                    },
                    {
                        'filename',
                        padding = {left=0, right=1}

                    },
                    {'diff'}
                },
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
    end,
}
