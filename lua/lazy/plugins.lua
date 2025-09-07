-- This file contains a list of all plugins which
-- lazy.nvim package manager gonna load (lua/lazy/lazy.lua)
-- P.S it's not necessary to give a names to all plugins
-- but some plugins/colorschemes requires it (like catppuccin theme)
return {
    {
        "folke/which-key.nvim",
        name = "which-key",
        opts = function()
            return require("configs.plugins.which-key")
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        name = "telescope",
        opts = function()
            return require("configs.plugins.telescope")
        end,
    },
    {
        "nvim-tree/nvim-web-devicons",
        name = "nvim-web-devicons",
        opts = function()
            return require("configs.plugins.nvim-web-devicons")
        end,
    },
    {
        "mason-org/mason.nvim",
        name = "mason",
        opts = function()
            return require("configs.plugins.mason")
        end,
    },
}

