return {
    {
      "folke/which-key.nvim",
      name = "which-key",
      opts = function()
        return require("configs.plugins.which-key")
      end,
    },
    {
      "nvim-telescope/telescope.nvim",
      name = "telescope",
      opts = function()
          return require("configs.plugins.telescope")
      end,
    },
    {
      "nvim-tree/nvim-web-devicons",
      name = "nvim-web-devicons",
      opts = function()
          return require("configs.plugins.nvim-web-devicons")
      end,
    },
}

