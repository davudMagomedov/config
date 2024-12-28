require("cinnamon").setup {
    -- Enable all provided keymaps
    keymaps = {
        basic = true,
        extra = false,
    },
    -- Only scroll the window
    options = {
        mode = "window",
        delay = 4,
    },
}
