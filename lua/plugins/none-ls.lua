return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.eslint_d,
                null_ls.builtins.formatting.ts_standard,
                null_ls.builtins.formatting.asmfmt,
                null_ls.builtins.formatting.luacheck,
                null_ls.builtins.diagnostics.phpmd,
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
