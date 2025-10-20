return {
    -- mason-lspconfig: Auto enables installed with mason, LSP servers
    -- also bridges gaps between mason and nvim-lspconfig
    "mason-org/mason-lspconfig.nvim",
    name = "mason-lspconfig",
    lazy = true,
    event = { "InsertEnter", "BufReadPre", "BufNewFile" },
    opts = {
        -- NOTE: "ensure_inatalled = {}" is unneded,
        -- Because LSP servers are included in mason-tool-installer
        ensure_installed = {}, -- Leave it empty

        -- Auto enable available LSP through vim.lsp.enable(server_name)
        -- NOTE: vim.lsp.enable() requires NeoVim v0.11 or above
        automatic_enable = true,
        -- To exclude certain servers from being automatically enabled:
        -- for example:
        -- automatic_enable = {
        --     exclude = {
        --         "rust_analyzer",
        --         "ts_ls"
        --     },
        -- },
    },
}
