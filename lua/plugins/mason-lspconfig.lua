-- This file is loaded through lua/lazy/plugins.lua

-- Configuration for mason-lspconfig.nvim
return {
    -- LSP servers to auto-install with mason
    -- See https://mason-registry.dev/registry/list for available servers
    ensure_installed = {
        "pyright", -- For Python
        "clangd", -- For C and C++
        "gopls", -- For go
        -- Add as needed (e.g., "clangd" for C/C++, "gopls" for Go and etc)
    },

    -- Automatically set up LSP servers with nvim-lspconfig
    automatic_installation = true,

    -- Handlers for LSP server configurations
    handlers = {
        -- Default handler for all servers
        function(server_name)
            require("lspconfig")[server_name].setup {
                on_attach = function(client, bufnr)
                    client.server_capabilities.completionProvider = {
                        triggerCharacters = { ".", ":", "->" },
                    }
                    return require("keymaps.mason-lspconfig") -- Sets Keymaps for lspconfig after attach of lsp
                end,
                -- Enable autocompletion via nvim-cmp
                capabilities = require("cmp_nvim_lsp").default_capabilities(),
            }
        end,
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
}

