return {
    "mason-org/mason-lspconfig.nvim",
    name = "mason-lspconfig",
    lazy = true,
    event = { "InsertEnter", "BufReadPre", "BufNewFile" },
    opts = {
        -- NOTE: "ensure_inatalled = {}" is unneded,
        -- Because LSP servers are included mason-tool-installer
        ensure_installed = {}, -- Leave it empty

        -- Auto enable available LSP through vim.lsp.enable()
        automatic_enable = true,
        -- To exclude certain servers from being automatically enabled:
        -- automatic_enable = {
        --   exclude = { "rust_analyzer", "ts_ls" }
        -- }
    },
}

