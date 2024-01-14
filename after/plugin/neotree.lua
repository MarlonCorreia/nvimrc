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
