-- This is a Main file which NeoVim gonna use on startup
-- When you add something here please check the order of command what you write
-- Like for example you can not set colorscheme before loading it with package manager

-- And a / directory for require("") is a lua directory

-- Loads Options like LineNumbers fromoptions.lua file
require("configs.options")

-- Loads Keymaps from keymaps directory
require("configs.keymaps.core")
require("configs.keymaps.telescope")

-- Loads a file what BootStraps of lazy.nvim package manager
-- Which is gonna load other stuff like plugins and colorschemes
require("lazy.lazy")

-- Applys a dashboard configuratin and logo using alpha-nvim
-- It's loaded here because in other ways it becomes useless
require("configs.plugins.alpha-nvim")

-- Command to set catppuccin-mocha theme after loading it with lazy.nvim
vim.cmd.colorscheme "catppuccin-mocha"

