return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", 
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                use_libuv_file_watcher = true,
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = false,
                }
            },
            buffers = {
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = false,
                }
            }
        })
        vim.keymap.set('n', '<C-n>', vim.cmd.Neotree)
    end,

}
