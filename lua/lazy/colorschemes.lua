return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        event = "VimEnter",
        opts = function()
            return require("configs.colorschemes.catppuccin")
        end,
    },
}
