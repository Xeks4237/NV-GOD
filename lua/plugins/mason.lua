-- This file is loaded through lua/lazy/plugins.lua

-- Configuration for mason
return {
    -- Add installed binaries to Neovim's PATH
    PATH = "prepend", -- Options: "prepend", "append", "skip"

    -- Custom registries (use default unless you have a private registry)
    registries = {
        "github:mason-org/mason-registry",
    },

    -- Provider settings for fetching dependencies
    providers = {
        "mason.providers.registry-api",
        "mason.providers.client",
    },

    -- UI customization for :Mason command
    ui = {
        -- Check for outdated packages on opening :Mason
        check_outdated_packages_on_open = true,

        -- Border style for Mason UI window
        border = "rounded", -- Options: "none", "single", "double", "rounded", "solid", "shadow"

        -- Window dimensions
        width = 0.9,
        height = 0.9,

        -- Icons for package states
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },

        -- Keymaps for Mason UI
        require("keymaps.mason"),
    },

    -- Logging level
    log_level = vim.log.levels.INFO, -- Options: TRACE, DEBUG, INFO, WARN, ERROR

    -- Maximum concurrent installation jobs
    max_concurrent_installers = 5,
}

