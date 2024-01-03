require("neo-tree").setup({
	default_component_configs = {
		git_status = {
			symbols = {
				-- Change type
				added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
				modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
				deleted   = "✖",-- this can only be used in the git_status source
				renamed   = "󰁕",-- this can only be used in the git_status source
				-- Status type
				untracked = "",
				ignored   = "",
				unstaged  = "󰄱",
				staged    = "",
				conflict  = "",
			}
		},
	},
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
