local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.barbar_auto_setup = false

map('n', '<C-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<C-.>', '<Cmd>BufferNext<CR>', opts)
map('n', '<C-S-C>', '<Cmd>BufferClose<CR>', opts)
map('n', '<C->>', '<Cmd>BufferMoveNext<CR>', opts)
map('n', '<C-<>', '<Cmd>BufferMovePrevious<CR>', opts)

require('barbar').setup({
    icons = {
        gitsigns = {
            added = {enabled = true, icon = '+'},
            changed = {enabled = true, icon = '~'},
            deleted = {enabled = true, icon = '-'},
        },
    },
    sidebar_filetypes = {
        -- Or, specify the event which the sidebar executes when leaving:
        ['neo-tree'] = {event = 'BufWipeout'},
  },
})
