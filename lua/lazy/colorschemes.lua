-- This file contains a table of all colorschemes which
-- lazy.nvim plugin manager gonna read, install and lazy load

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = true,
        opts = function()
            return require("colorschemes.catppuccin")
        end,
    },
    {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        lazy = true,
        opts = function()
            return require("colorschemes.tokyonight")
        end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        lazy = true,
        opts = function()
            return require("colorschemes.gruvbox")
        end,
    },
}

