-- This file is loaded through lua/lazy/plugins.lua

-- Configuration for conform.nvim
return {
    -- Map of filetype to formatters
    -- for example stylua formatter for lua
    -- and also you can choose multiple formatters for one filetype
    -- You can use a function here to determine the formatters dynamically
    formatters_by_ft = {
        lua = { "stylua" }, -- for lua
        go = { "goimports", "gofmt" }, -- for go
        python = { "black" }, -- for python
        bash = { "beautysh" }, -- for bash
        zsh = { "beautysh" }, -- for zsh
        c = { "clang_format " }, -- for c
        -- Use the "*" filetype to run formatters on all filetypes.
        -- for example for spell checker
        ["*"] = { "codespell" },
        -- Use the "_" filetype to run formatters on 
        -- filetypes that don't have other formatters configured.
        ["_"] = { "prettier" },
    },
    -- Set this to change the default values when calling conform.format()
    -- This will also affect the default values for format_on_save/format_after_save
    default_format_opts = {
        lsp_format = "fallback",
    },
    -- If this is set, Conform will run the formatter on save.
    -- It will pass the table to conform.format().
    -- This can also be a function that returns the table.
    format_on_save = {
        -- I recommend these options. See :help conform.format for details.
        lsp_format = "fallback",
        timeout_ms = 250,
    },
    -- If this is set, Conform will run the formatter asynchronously after save.
    -- It will pass the table to conform.format().
    -- This can also be a function that returns the table.
    format_after_save = {
        lsp_format = "fallback",
    },
    -- Set the log level. Use `:ConformInfo` to see the location of the log file.
    log_level = vim.log.levels.ERROR,
    -- Conform will notify you when a formatter errors
    notify_on_error = true,
    -- Conform will notify you when no formatters are available for the buffer
    notify_no_formatters = true,
    -- Custom formatters and overrides for built-in formatters if needed
    formatters = {},
}

