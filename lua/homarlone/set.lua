vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.opt.nu = true
vim.opt.relativenumber = true

vim.g.rainbow_active = true
vim.g.iced_enable_default_key_mappings = true

vim.cmd.colorscheme("kanagawa-dragon")

vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = "" })

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.hlsearch = false 
