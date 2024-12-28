require("lualine").setup{
    options = { theme = "auto" },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {'filename', 'filetype'},
        lualine_x = {'diagnostics'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
}
