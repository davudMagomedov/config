function hide_cursor()
    local hl = vim.api.nvim_get_hl_by_name('Cursor', true)
    hl.blend = 100
    vim.api.nvim_set_hl(0, 'Cursor', hl)
    vim.opt.guicursor:append('a:Cursor/lCursor')
end

function show_cursor()
    local hl = vim.api.nvim_get_hl_by_name('Cursor', true)
    hl.blend = 0
    vim.api.nvim_set_hl(0, 'Cursor', hl)
    vim.opt.guicursor:remove('a:Cursor/lCursor')
end
