-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require("packages.treesitter")
require("packages.cinnamon")
require("packages.trouble")
require("packages.gitsigns")
require("packages.lsp")
require("packages.nvimtree")
require("packages.bufferline")
require("packages.lualine")
require("packages.startup")
require("packages.outline")

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        "catppuccin/nvim",
        as = "catppuccin",
    }

    use { "lewis6991/gitsigns.nvim" }

    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

    use { "declancm/cinnamon.nvim" }

    use {
        "hedyhli/outline.nvim",
    }

    use {
        "folke/trouble.nvim"
    }

    use {
        "startup-nvim/startup.nvim",
        requires = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-file-browser.nvim"
        },
    }

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use({'neovim/nvim-lspconfig'})
    use({'hrsh7th/nvim-cmp'})
    use({'hrsh7th/cmp-nvim-lsp'})
    use {"williamboman/mason.nvim"}
    use {'williamboman/mason-lspconfig.nvim'}
    use {'nvim-tree/nvim-tree.lua'}
    use {'nvim-tree/nvim-web-devicons'}
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
end)
