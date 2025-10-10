-- This file is loaded through lua/lazy/bootstrap.lua

-- This file contains a table of all plugins which
-- lazy.nvim plugin manager gonna read, install and lazy load
-- lazy.nvim has many of settings which you can use in this table
-- To know more about it see the official site with doc for lazy.nvim:
-- https://lazy.folke.io

-- name = "", sets a name of local directory where lazy.nvim installs plugin
-- P.S it's not necessary to give a names to all plugins manually
-- But some plugins/colorschemes requires it (like catppuccin theme)

-- lazy = true, says is this plugin is needed to be lazy loaded or not

-- event = "", says lazy.nvim when or how to load this plugin:
    -- "VimEnter" loads plugin on startup
    -- "InsertEnter" loads plugin when you start typing in insert mode
    -- "BufReadPre" loads plugin before reading buffer
    -- "CmdlineEnter" loads plugin when you start typing in cmdline

-- opts = "", stuff what happens AFTER loading plugin
-- For example to require file with settings for plugin after loading it

return {
    {
        -- which-key: adds popup menu with keymaps of your NeoVim setup
        "folke/which-key.nvim",
        name = "which-key",
        lazy = false,
        opts = require("plugins.which-key"),
    },
    {
        -- telescope: Most popular plugin for NeoVim Telescope is needed to search:
        -- files, code, buffers, and other stuff in cool ui
        "nvim-telescope/telescope.nvim",
        name = "telescope",
        lazy = true,
        opts = require("plugins.telescope"),
    },
    {
        -- telescope-ui-select: Allows other plugins to use ui of telescope for their needs
        "nvim-telescope/telescope-ui-select.nvim",
        name = "telescope-ui-select",
        lazy = true,
    },
    {
        -- nvim-web-devicons: Library Plugin for adding ability to use various glyps and symbols for other plugins
        "nvim-tree/nvim-web-devicons",
        name = "nvim-web-devicons",
        lazy = true,
        opts = require("plugins.nvim-web-devicons"),
    },
    {
        -- mason: package manager for easily installing and managing:
        -- Language Server Plugins, formatters, linters, and Debug Adapter Plugins inside of nvim
        "mason-org/mason.nvim",
        name = "mason",
        lazy = false,
        opts = require("plugins.mason"),
    },
    {
        -- mason-lspconfig: Bridges mason.nvim with nvim-lspconfig
        -- To auto-setup LSP Server settings through
        -- nvim-lspconfig after installing them with mason.nvim
        "williamboman/mason-lspconfig.nvim",
        name = "mason-lspconfig",
        lazy = true,
        event = { "InsertEnter", "BufReadPre" },
        opts = require("plugins.mason-lspconfig"),
    },
    {
        -- mason-tool-installer: Allows to auto install and update additional tools
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        name = "mason-tool-installer",
        lazy = false,
        opts = require("plugins.mason-tool-installer"),
    },
    {
        -- nvim-lspconfig: pre-defined configurations for LSP servers
        "neovim/nvim-lspconfig",
        name = "nvim-lspconfig",
        lazy = true,
        event = { "InsertEnter", "BufReadPre" },
        -- Doesn't need configuration if mason-lspconfig is available
    },
    {
        -- lualine: makes status line of NeoVim better
        "nvim-lualine/lualine.nvim",
        name = "lualine",
        lazy = false,
        opts = require("plugins.lualine"),
    },
    {
        -- nui: UI Component Library for Neovim
        "MunifTanjim/nui.nvim",
        name = "nui",
        lazy = true,
    },
    {
        -- plenary: Library plugin needed for devs to not write same parts of code over and over in their plugins
        "nvim-lua/plenary.nvim",
        name = "plenary.nvim",
        lazy = true,
    },
    {
        -- alpha-nvim: adds custom greeting screen for NeoVim
        -- P.S before 2023 everybody was using dashboard-nvim plugin, but it is now discontinued
        "goolord/alpha-nvim",
        name = "alpha-nvim",
        lazy = false,
        -- Config of this plugins is loaded in init.lua
    },
    {
        -- gitsigns: For showing different git related info in editor
        "lewis6991/gitsigns.nvim",
        name = "gitsigns",
        lazy = true,
        event = "BufReadPre",
        opts = require("plugins.gitsigns"),
    },
    {
        -- nvim-cmp: is a Main autocompletions plugin and framework for it
        "hrsh7th/nvim-cmp",
        name = "nvim-cmp",
        lazy = true,
        event = { "InsertEnter", "BufReadPre" },
        -- Settings for some plugins don't loads require("") directly
        opts = function()
            require("plugins.nvim-cmp")
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
        event = { "InsertEnter", "BufReadPre" },
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
        -- luasnip: Snippets engine
        "L3MON4D3/LuaSnip",
        name = "luasnip",
        build = "make install_jsregexp", -- Installs needed library (optional but recommended)
        lazy = true,
        event = { "InsertEnter" },
        opts = require("plugins.luasnip"),
    },
    {
        -- cmp_luasnip: plugin to allow nvim-cmp to use luasnip
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
        -- conform.nvim: powerful formatter plugin, with a lot of extra features for LSP
        "stevearc/conform.nvim",
        name = "conform",
        lazy = true,
        event = { "InsertEnter", "BufReadPre" },
        opts = require("plugins.conform"),
    },
    {
        -- trouble.nvim: A pretty diagnostics, references, telescope results, quickfix and location list
        -- to help you solve all the trouble your code is causing.
        "folke/trouble.nvim",
        name = "trouble",
        lazy = true,
        opts = require("plugins.trouble"),
    },
    {
        -- noice.nvim: plugin for better cmd-line
        "folke/noice.nvim",
        name = "noice.nvim",
        lazy = true,
        opts = require("plugins.noice"),
    },
    {
        -- nvim-notify: plugin for better notifications
        "rcarriga/nvim-notify",
        name = "nvim-notify",
        lazy = false,
        opts = require("plugins.nvim-notify"),
    },
    {
        -- harpoon: plugin for fast navigation between buffers
        "ThePrimeagen/harpoon", branch = "harpoon2",
        name = "harpoon",
        lazy = true,
        opts = require("plugins.harpoon"),
    },
    {
        -- nvim-treesitter: plugin for nvim's treesitter to ext it's functionality
        "nvim-treesitter/nvim-treesitter", branch = "main",
        name = "treesitter",
        build = ":TSUpdate",
        lazy = true,
        event = { "InsertEnter", "BufReadPre" },
        opts = require("plugins.treesitter"),
    },
    {
        -- nvim-treesitter-wise: extension for nvim-treesitter for auto closing functions, tables, and etc
        "RRethy/nvim-treesitter-endwise",
        name = "treesitter-endwise",
        lazy = true,
        event = "InsertEnter",
    },
    {
        -- bufferline: Better tabline with buffers
        "akinsho/bufferline.nvim",
        name = "bufferline",
        lazy = false,
        opts = require("plugins.bufferline"),
    },
    {
        -- nvim-autopairs: for auto closing to () {} [] and etc
        "windwp/nvim-autopairs",
        name = "nvim-autopairs",
        lazy = true,
        event = "InsertEnter",
        opts = require("plugins.nvim-autopairs"),
    },
    {
        -- oil.nvim: File Explorer what allows you to edit your files like a buffer
        "stevearc/oil.nvim",
        name = "oil",
        lazy = false,
        opts = require("plugins.oil"),
    },
    {
        -- neoclip: clipboard manager for managing yank history
        "AckslD/nvim-neoclip.lua",
        name = "neoclip",
        lazy = false,
        opts = require("plugins.neoclip"),
    },
    {
        -- sqlite: SQLite/LuaJIT binding plugin with simple api
        "kkharji/sqlite.lua",
        name = "sqlite",
        lazy = true,
    },
}

