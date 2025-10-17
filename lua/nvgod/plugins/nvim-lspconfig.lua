return {
    "neovim/nvim-lspconfig",
    name = "nvim-lspconfig",
    lazy = true,
    event = { "InsertEnter", "BufReadPre", "BufNewFile" },
    config = function() end,
}

