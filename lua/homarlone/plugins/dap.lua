return {
    'mfussenegger/nvim-dap',
    dependencies = {
        'rcarriga/nvim-dap-ui',
        'leoluz/nvim-dap-go',
        'mfussenegger/nvim-dap-python'
    },
    config = function ()
        local dap, dapui = require('dap'), require("dapui")

        require("dap-go").setup()
        require("dapui").setup()
        require('dap-python').setup('~/.config/python_dbg/debugpy/bin/python')

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        vim.keymap.set('n', '<Leader>Dq', dap.terminate, {})
        vim.keymap.set('n', '<Leader>Db', dap.toggle_breakpoint, {})
        vim.keymap.set('n', '<Leader>Dc', dap.continue, {})
        vim.keymap.set('n', '<Leader>Do', dap.step_over, {})
        vim.keymap.set('n', '<Leader>Di', dap.step_into, {})
        vim.keymap.set('n', '<Leader>Dt', dap.step_out, {})
        vim.keymap.set('n', '<Leader>Dr', dap.repl.open, {})
    end,
}
