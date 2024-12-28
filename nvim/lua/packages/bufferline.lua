local colors = {
    ["error_mark"] = "#FF5F85",
    ["error_text"] = "#FF5F85",
}

require("bufferline").setup{
    options = {
        always_show_bufferline = true,
        separator_style = "slant",
        tab_size = 12,
        show_tab_indicators = true,
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and " " or " "
            return icon .. count
        end,
    },
    highlights = {
        error_selected = {
            fg = colors.error_text,
            bold = false,
            italic = false,
        },
        error_diagnostic_selected = {
            fg = colors.error_mark,
        },
    },
}

vim.keymap.set("n", "L", vim.cmd.BufferLineCycleNext)
vim.keymap.set("n", "H", vim.cmd.BufferLineCyclePrev)
vim.keymap.set("n", "<leader>bd", vim.cmd.bdelete)
