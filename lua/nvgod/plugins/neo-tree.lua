return {
    -- neo-tree: Neovim plugin to browse and edit the file system
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim", -- Library Plugin
        "MunifTanjim/nui.nvim", -- Plugin for Rendering UI elements in NeoVim
    },
    lazy = false,
    keys = {
        { "<C-e>", "<cmd>Neotree reveal<CR>", desc = "Reveal NeoTree" },
    },
    opts = {
        filesystem = {
            window = {
                mappings = {
                    ["<C-e>"] = "close_window",
                },
            },
        },
    },
}

