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
        "nvim-lualine/lualine.nvim",
        name = "lualine",
        lazy = false,
        event = "VimEnter",
        opts = function()
            return require("configs.plugins.lualine")
        end,
    },
    {
        "MunifTanjim/nui.nvim",
        name = "nui",
        lazy = true,
        event = "VeryLazy",
    },
    {
        "nvim-lua/plenary.nvim",
        name = "plenary.nvim",
        lazy = true,
        event = "VeryLazy",
    },
    {
        "goolord/alpha-nvim",
        name = "alpha-nvim",
        lazy = false,
        event = "VimEnter",
        -- Settings for this plugins is loaded in init.lua
        -- opts = function ()
        --     return require("configs.plugins.alpha-nvim")
        -- end
    },
    {
        "lewis6991/gitsigns.nvim",
        name = "gitsigns",
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("configs.plugins.gitsigns")
        end
    },
    {
        -- nvim-cmp: Main completion plugin and framework
        "hrsh7th/nvim-cmp",
        name = "nvim-cmp",
        lazy = true,
        event = { "InsertEnter", "CmdlineEnter" },
        opts = function()
            return require("configs.plugins.nvim-cmp")
        end,
    },
    {
        -- cmp-nvim-lsp: LSP completion source
        "hrsh7th/cmp-nvim-lsp",
        name = "cmp-nvim-lsp",
        lazy = true,
        event = { "InsertEnter" },
    },
    {
        -- cmp-buffer: Buffer words completion source
        "hrsh7th/cmp-buffer",
        name = "cmp-buffer",
        lazy = true,
        event = { "InsertEnter" },
    },
    {
        -- cmp-path: File path completion source
        "hrsh7th/cmp-path",
        name = "cmp-path",
        lazy = true,
        event = { "InsertEnter" },
    },
    {
        -- cmp-cmdline: Command-line completion source
        "hrsh7th/cmp-cmdline",
        name = "cmp-cmdline",
        lazy = true,
        event = "CmdlineEnter",
    },
    {
        -- LuaSnip: Snippet engine
        "L3MON4D3/LuaSnip",
        name = "LuaSnip",
        lazy = true,
        event = { "InsertEnter" },
        opts = function()
            require("configs.plugins.LuaSnip")
        end,
    },
    {
        -- cmp_luasnip: Snippet completion source
        "saadparwaiz1/cmp_luasnip",
        name = "cmp_luasnip",
        lazy = true,
        event = { "InsertEnter" },
    },
    {
        -- friendly-snippets: Prebuilt snippets for many languages
        "rafamadriz/friendly-snippets",
        name = "friendly-snippets",
        lazy = true,
        event = { "InsertEnter" },
    },
    {
        -- plugin to allow stuff releted to menu of telescope plugin
        "nvim-telescope/telescope-ui-select.nvim",
        name = "telescope-ui-select",
        lazy = true,
        event = "VeryLazy",
    },
}
