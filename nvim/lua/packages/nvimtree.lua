local HEIGHT_RATIO = 0.8  -- You can change this
local WIDTH_RATIO = 0.5   -- You can change this too

-- OR setup with some options
require("nvim-tree").setup({
    hijack_cursor = true,
    diagnostics = {
        enable = true, -- enable diagnostics, why not?
        show_on_dirs = true,        --+- show diagnostics icons on dirs that are not opened.
        show_on_open_dirs = false,  --+
        severity = {min = vim.diagnostic.severity.ERROR,  --+- show only errors.
                    max = vim.diagnostic.severity.ERROR}, --+
    },
    sort = {
        sorter = "case_sensitive",
    },
    renderer = {
        icons = {
            git_placement = "after", -- place diagnostic icons after a file name.
            diagnostics_placement = "after", -- place diagnostic icons after a file name.
        },
        group_empty = false,
        highlight_git = "name",
        highlight_diagnostics = "name",
    },
    filters = {
        dotfiles = true, -- disable showing files that are starting from dot.
    },
    view = {
        signcolumn = "no", -- removing that stupid empty place before file name row.
        float = { -- window: float window in the center of screen. The shape is adjusted
                  -- by the WIDTH_RATIO and HEIGHT_RATIO constants.
            enable = true,
            open_win_config = function()
                local screen_w = vim.opt.columns:get()
                local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
                local window_w = screen_w * WIDTH_RATIO
                local window_h = screen_h * HEIGHT_RATIO
                local window_w_int = math.floor(window_w)
                local window_h_int = math.floor(window_h)
                local center_x = (screen_w - window_w) / 2
                local center_y = ((vim.opt.lines:get() - window_h) / 2)
                                 - vim.opt.cmdheight:get()
                return {
                    border = 'rounded',
                    relative = 'editor',
                    row = center_y,
                    col = center_x,
                    width = window_w_int,
                    height = window_h_int,
                }
            end,
        },
        width = function()
            return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
        end,
    },
})

vim.keymap.set("n", "<leader>e", function() vim.cmd.NvimTreeToggle() end)
