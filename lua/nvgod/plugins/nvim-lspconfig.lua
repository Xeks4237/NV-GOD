return {
    -- nvim-lspconfig: Predefined configurations for LSP servers
    -- NOTE: It auto applys it's configs to builtin vim.lsp.config() for LSP servers
    -- And then you can enable needed servers using vim.lsp.enable(servet_name)
    -- In NV-GOD "mason-lspconfig" plugin auto enables installed with mason servers for your NeoVim
    "neovim/nvim-lspconfig",
    name = "nvim-lspconfig",
    lazy = true,
    event = { "InsertEnter", "BufReadPre", "BufNewFile" },
}
