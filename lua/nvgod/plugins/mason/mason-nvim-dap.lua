return {
    -- mason-nvim-dap: Auto setups all DAP installed with mason
    "jay-babu/mason-nvim-dap.nvim",
    name = "mason-nvim-dap",
    lazy = true,
    opts = {
        -- Makes a best effort to setup the various debuggers with
        -- reasonable debug configurations
        automatic_installation = true,

        -- NOTE: You can provide additional configuration to the handlers,
        -- see mason-nvim-dap README for more information:
        -- https://github.com/jay-babu/mason-nvim-dap.nvim
        handlers = {},

        -- NOTE: Everything needed for "ensure_installed = {}" are included in mason-tool-installer.lua
        ensure_installed = {}, -- Not needed
    },
}

