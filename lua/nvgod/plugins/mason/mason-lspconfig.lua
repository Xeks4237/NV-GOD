-- Configuration for mason-lspconfig.nvim
return {
    "williamboman/mason-lspconfig.nvim",
    name = "mason-lspconfig",
    lazy = false,
    dependencies = {
        "mason-org/mason.nvim",
        "neovim/nvim-lspconfig",
    },
    opts = {
        -- NOTE: "ensure_installed = {}" isn't needed to be set here
        -- because lsp servers are included in mason-tool-installer
        ensure_installed = {},

        -- Automatically enable LSP servers with nvim-lspconfig
        automatic_enable = true,

        -- Handlers for LSP server configurations
        handlers = {
            -- Default handler for all servers
        },

        -- Diagnostics customization
        vim.diagnostic.config({
            virtual_text = {
                prefix = "●",
                spacing = 4,
            },
            signs = true,
            update_in_insert = true,
            severity_sort = true,
        }),
    },
}

