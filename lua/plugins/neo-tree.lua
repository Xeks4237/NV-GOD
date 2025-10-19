return {
    -- neo-tree: Neovim plugin to browse and edit the file system
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim", -- Library Plugin
        "MunifTanjim/nui.nvim", -- Plugin for Rendering UI elements in NeoVim
    },
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
