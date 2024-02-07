local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
    pattern = {"*.go", "*.py"},
	group = "__formatter__",
	command = ":FormatWrite",
})

return {
    'mhartington/formatter.nvim',
    config = function()
        require("formatter").setup({
            logging = true,
            log_level = vim.log.levels.WARN,
            filetype = {
                go = {
                    function()
                        return {
                            exe = "gofmt",
                            stdin = true,
                        }
                    end,
                },
                python = { require("formatter.filetypes.python").black, },
            }
        })
    end,

}
