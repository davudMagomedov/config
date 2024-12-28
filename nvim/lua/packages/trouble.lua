local trouble = require("trouble")

trouble.setup {
    modes = {
        diagnostics = {
            -- mode = "diagnostics",
            preview = {
                type = "split",
                relative = "win",
                position = "right",
                size = 0.4,
            },
        },
    },
}

vim.keymap.set("n", "<leader>da", "<cmd>Trouble diagnostics toggle focus=true<cr>")
vim.keymap.set("n", "<leader>ds", "<cmd>Trouble diagnostics toggle focus=true filter.buf=0<cr>")
