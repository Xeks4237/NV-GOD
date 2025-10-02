-- This file contains a table of all plugins which
-- lazy.nvim plugin manager gonna read, install and lazy load
-- lazy.nvim has many of settings which you can use in this table
-- To know more about it see the official site with doc for lazy.nvim:
-- https://lazy.folke.io

-- name = "", sets a name of local directory where lazy.nvim installs plugin

-- lazy = true, this option says if this plugin is needed to be lazy loaded or not

-- event = "", says lazy.nvim when or how to load this plugin:
    -- event = "VeryLazy" needed to load plugin only when needed
    -- event = "VimEnter" needed to load plugin on startup
    -- "InsertEnter" needed to load plugin when you start typing
    -- "CmdlineEnter" needed to load plugin when you start typing in cmd

-- P.S it's not necessary to give a names to all plugins manually
-- But some plugins/colorschemes requires it (like catppuccin theme)

-- P.S Some plugins don't need options to function, for example:
-- library plugins like plenary or nui

return {
    {
        -- which-key: adds popup menu with keymaps of your NeoVim setup
        "folke/which-key.nvim",
        name = "which-key",
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("plugins.which-key")
        end,
    },
    {
        -- telescope: Most popular plugin for NeoVim Telescope is needed to search:
        -- files, code, buffers, and other stuff in cool ui
        "nvim-telescope/telescope.nvim",
        name = "telescope",
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("plugins.telescope")
        end,
    },
    {
        -- nvim-web-devicons: Library Plugin for adding ability to use various glyps and symbols for other plugins
        "nvim-tree/nvim-web-devicons",
        name = "nvim-web-devicons",
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("plugins.nvim-web-devicons")
        end,
    },
    {
        -- mason: package manager for easyly installing and managing:
        -- Language Server Plugins, formatters, linters, and Debug Adapter Plugins inside of nvim
        "mason-org/mason.nvim",
        name = "mason",
        event = "VeryLazy",
        lazy = true,
        opts = function()
            return require("plugins.mason")
        end,
    },
    {
        -- mason-lspconfig: Bridge to nvim-lspconfig for auto-setup
        "williamboman/mason-lspconfig.nvim",
        name = "mason-lspconfig",
        lazy = true,
        event = "BufReadPre",
        opts = function()
            return require("plugins.mason-lspconfig")
        end,
    },
    {
        -- nvim-lspconfig: Needed for LSP configuration (dependency of mason-lspconfig)
        "neovim/nvim-lspconfig",
        name = "nvim-lspconfig",
        lazy = true,
        event = "BufReadPre",
    },
    {
        -- lualine: makes status line of NeoVim better
        "nvim-lualine/lualine.nvim",
        name = "lualine",
        lazy = false,
        event = "VeryLazy",
        opts = function()
            return require("plugins.lualine")
        end,
    },
    {
        -- nui: UI Component Library for Neovim
        "MunifTanjim/nui.nvim",
        name = "nui",
        lazy = true,
        event = "VeryLazy",
    },
    {
        -- plenary: Library plugin needed for devs to not write same parts of code over and over in their plugins
        "nvim-lua/plenary.nvim",
        name = "plenary.nvim",
        lazy = true,
        event = "VeryLazy",
    },
    {
        -- alpha-nvim: adds custom greeting screen for NeoVim
        -- P.S before 2023 everybody was using dashboard-nvim plugin, but it is now discontinued
        "goolord/alpha-nvim",
        name = "alpha-nvim",
        lazy = false,
        event = "VimEnter",
        -- Config of this plugins is loaded in init.lua
    },
    {
        -- gitsigns: For showing different git related info in editor
        "lewis6991/gitsigns.nvim",
        name = "gitsigns",
        lazy = true,
        event = "BufReadPre",
        opts = function()
            return require("plugins.gitsigns")
        end,
    },
    {
        -- nvim-cmp is a Main autocompletions plugin and framework for it
        "hrsh7th/nvim-cmp",
        name = "nvim-cmp",
        lazy = true,
        event = { "InsertEnter", "CmdlineEnter" },
        opts = function()
            return require("plugins.nvim-cmp")
        end,
    },
    {
        -- cmp-nvim-lsp: LSP autocompletion source for nvim-cmp
        "hrsh7th/cmp-nvim-lsp",
        name = "cmp-nvim-lsp",
        lazy = true,
        event = { "InsertEnter" },
    },
    {
        -- cmp-buffer: Buffer words autocompletions source
        "hrsh7th/cmp-buffer",
        name = "cmp-buffer",
        lazy = true,
        event = { "InsertEnter" },
    },
    {
        -- cmp-path: File paths autocompletion source
        "hrsh7th/cmp-path",
        name = "cmp-path",
        lazy = true,
        event = { "InsertEnter" },
    },
    {
        -- cmp-cmdline: Command-line autocompletions source
        "hrsh7th/cmp-cmdline",
        name = "cmp-cmdline",
        lazy = true,
        event = "CmdlineEnter",
    },
    {
        -- LuaSnip: Snippets engine
        "L3MON4D3/LuaSnip",
        name = "LuaSnip",
        lazy = true,
        event = { "InsertEnter" },
        opts = function()
            require("plugins.LuaSnip")
        end,
    },
    {
        -- cmp_luasnip: Snippets autocompletions source
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
        -- telescope-ui-select: Allows other plugins to use ui of telescope for their needs
        "nvim-telescope/telescope-ui-select.nvim",
        name = "telescope-ui-select",
        lazy = true,
        event = "VeryLazy",
    },
    {
        "folke/noice.nvim",
        name = "noice",
        lazy = true,
        event = "VimEnter",
        opts = function()
            return require("plugins.noice")
        end,
    },
    {
        "rcarriga/nvim-notify",
        name = "nvim-notify",
        lazy = true,
        event = "VimEnter",
        opts = function()
            return require("plugins.nvim-notify")
        end,
    },
    {
        "ThePrimeagen/harpoon", branch = "harpoon2",
        name = "harpoon",
        lazy = true,
        event = "VeryLazy",
        opts = function()
            return require("plugins.harpoon")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter", branch = "main",
        name = "treesitter",
        build = ":TSUpdate",
        lazy = true,
        event = { "InsertEnter" },
        opts = function()
            return require("plugins.treesitter")
        end,
    },
    {
        "RRethy/nvim-treesitter-endwise",
        name = "treesitter-endwise",
        lazy = true,
        event = { "InsertEnter" },
    },
    {
        "akinsho/bufferline.nvim",
        name = "bufferline",
        lazy = true,
        event = "VimEnter",
        opts = function()
            return require("plugins.bufferline")
        end
    },
}

