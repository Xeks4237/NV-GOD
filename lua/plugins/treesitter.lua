-- This file is loaded through lua/lazy/plugins.lua

-- Configuration for nvim-treesitter plugin
return {
    -- List of parser names that must always be installed
    -- or you can just use "all" to ensure all supported parsers.
    ensure_installed = {
        "lua",
        "c",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "python",
    },

    -- Install parsers synchronously (only applies to "ensure_installed").
    -- If false, parsers will be installed asynchronously (recommended)
    sync_install = false,

    -- Automatically install missing parsers when entering a buffer.
    -- Recommended to set to false if the "tree-sitter" CLI tool is not installed locally.
    auto_install = true,

    -- List of parsers to ignore installing, or "all" to ignore all parsers.
    -- Example: {"javascript"}
    ignore_install = {},

    -- Custom directory to install parsers to.
    -- If nil, uses default "~/.local/share/nvim/lazy/nvim-treesitter" or similar.
    -- Note: If set, prepend it to "runtimepath" with "vim.opt.runtimepath:prepend(your_path)".
    parser_install_dir = nil,

    -- Module: highlight
    -- Enables tree-sitter based syntax highlighting.
    highlight = {
        -- Enable the module.
        enable = true,

        -- List of languages to disable highlighting for, or a function(bufnr) returning a list of languages.
        -- Example: {"c", "rust"} or function(bufnr) return vim.api.nvim_buf_get_option(bufnr, "filetype") == "txt" and {"txt"} or {} end
        disable = {},

        -- Additional Vim regex highlighting (e.g., for "TextProps").
        -- Can be a table of languages instead of "true"
        -- Warning: May slow down the editor and cause duplicate highlights.
        additional_vim_regex_highlighting = false,
    },

    -- Module: incremental_selection
    -- Enables incremental selection based on tree-sitter nodes.
    incremental_selection = {
        -- Enable the module.
        enable = true,

        -- Keymaps for the module (set to "false" to disable a keymap).
        keymaps = function()
            return require("keymaps.treesitter")
        end,
    },

    -- Module: textobjects (requires nvim-treesitter/nvim-treesitter-textobjects)
    -- Enables textobjects based on tree-sitter nodes (e.g., @function.inner).
    textobjects = {
        enable = true,
    },

    -- Module: indent
    -- Enables tree-sitter based indentation.
    -- Note: Experimental feature.
    indent = {
        -- Enable the module.
        enable = true,
    },

    -- Module: autotag (requires nvim-treesitter/nvim-treesitter-textobjects or similar, but configurable here)
    -- Enables auto-closing and renaming of HTML/XML tags.
    autotag = {
        -- Enable the module.
        enable = true,
    },

    -- Module: matchup (requires nvim-treesitter/nvim-treesitter-endwise or similar, but configurable)
    -- Enables matching of brackets, tags, etc.
    matchup = {
        -- Enable the module.
        enable = true,
    },
}

