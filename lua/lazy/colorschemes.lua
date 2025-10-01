return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        event = "VimEnter",
        opts = function()
            return require("colorschemes.catppuccin")
        end,
    },
}

