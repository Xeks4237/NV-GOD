-- This file contains a list of all plugins which
-- lazy.nvim plugin manager gonna read and load
-- lazy.nvim plugin manager has A LOT OF settings which You can use in this table, to know more about it see the official site with documentation of lazy.nvim:
-- https://lazy.folke.io

-- here I gonna mention main stuff which you gonna know in first place to start using it on NV-GOD:
    -- name = "", sets a name of local directory where lazy.nvim installs a plugin, and it sets it's name
    -- lazy = true, this option says if this plugin is needed to be lazy loaded or not, if it equals to false then it gonna be loaded only when it's used somewhere in config like through:
        -- require("this-exact-plugin")
    -- event = "",  says lazy.nvim how to load this plugin:
        -- event = "VeryLazy" needed to load plugin only when needed
        -- event = "VimEnter" needed to load plugin on startup

-- P.S it's not necessary to give a names to all plugins manually
-- But some plugins/colorschemes requires it
-- (like catppuccin theme) and You can give custom name to some of them if you want, but it's not recommended

-- Some plugins don't need options, for example some library plugins like plenary or nui
return {
    {
        "folke/which-key.nvim",
        name = "which-key",
        priority = 10,
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("configs.plugins.which-key")
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        name = "telescope",
        priority = 10,
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("configs.plugins.telescope")
        end,
    },
    {
        "nvim-tree/nvim-web-devicons",
        name = "nvim-web-devicons",
        priority = 10,
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("configs.plugins.nvim-web-devicons")
        end,
    },
    {
        "mason-org/mason.nvim",
        name = "mason",
        priority = 10,
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("configs.plugins.mason")
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        name = "lualine",
        priority = 100,
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("configs.plugins.lualine")
        end,
    },
    {
        "MunifTanjim/nui.nvim",
        name = "nui",
        priority = 10,
        lazy = true,
        event = "VeryLazy",
        -- opts = function()
        --     return require("confifs.plugins.nui")
        -- end,
    },
    {
        "nvim-lua/plenary.nvim",
        name = "plenary.nvim",
        priority = 10,
        lazy = true,
        event = "VeryLazy",
        -- opts = function()
        --     return require("configs.plugins.plenary")
        -- end,
    },
    {
        "goolord/alpha-nvim",
        name = "alpha-nvim",
        priority = 100,
        lazy = false,
        event = "VimEnter",
        -- opts = function ()
        --     return require("configs.plugins.alpha-nvim")
        -- end
    },
}

