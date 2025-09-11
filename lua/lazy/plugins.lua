-- This file contains a list of all plugins which
-- lazy.nvim package manager gonna read and load (see in lua/lazy/lazy.lua)

-- lazy.nvim plugin manager has A LOT OF settings which You can use in this table, to know more about it see the official site with documentation of lazy.nvim:
-- https://lazy.folke.io

-- here I gonna mention main stuff which you gonna know in first place to start usimg it on NV-GOD:
    -- name = "", sets a name of local directory where lazy.nvim installs a plugin, and it sets it's name
    -- lazy = true, this option says if this plugin is needed to be lazy loaded or not, if it equals false then it gonna be loaded only when it's used somewhere in config like through require("this-exact-plugin")
    -- event = "",  says lazy.nvim how to load this plugin, like for example:
        -- telescope plugin doesn't needed to be loaded in startup, because you gonna use it in some exact cases. and it's more convenient to give him a "VeryLazy" to make lazy.nvim load it lazyly and don't load you PC whem it's unneded
        -- But in other case like on dashboard plugin it's strictly needed to be loaded in startup, because it's a first think what you gonna see in startup of NeoVim, and etc.
        -- Here a list of most common 2 events:
            -- "VeryLazy" needed to load plugin only when needed
            -- "VimEnter" needed to load plugin on startup

-- P.S it's not necessary to give a names to all plugins manually
-- But some plugins/colorschemes requires it
-- (like catppuccin theme) and You can give custom name to some of them if you want, but it's not recommended
return {
    {
        "folke/which-key.nvim",
        name = "which-key",
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("configs.plugins.which-key")
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        name = "telescope",
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("configs.plugins.telescope")
        end,
    },
    {
        "nvim-tree/nvim-web-devicons",
        name = "nvim-web-devicons",
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("configs.plugins.nvim-web-devicons")
        end,
    },
    {
        "mason-org/mason.nvim",
        name = "mason",
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("configs.plugins.mason")
        end,
    },
    {
        "nvimdev/dashboard-nvim",
        name = "dashboard",
        lazy = true,
        event = "VimEnter",
        opts = function()
            return require("configs.plugins.dashboard")
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        name = "lualine",
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("configs.plugins.lualine")
        end,
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        name = "neotree",
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("configs.plugins.neotree")
        end,
    },
    {
        "MunifTanjim/nui.nvim",
        name = "nui",
        lazy = true,
        event = "VeryLazy",
        -- opts = function()
        --     return require("confifs.plugins.nui")
        -- end,
    },
}

