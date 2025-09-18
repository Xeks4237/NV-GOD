-- This is a Main file which NeoVim gonna use on startup
-- When you add something here please check the order of commands what you write
-- Like for example you can not set colorscheme before loading it with package manager

-- Loads Options like LineNumbers from options.lua file
require("configs.options")

-- Loads Keymaps from keymaps directory
require("configs.keymaps.core")

-- Loads a file what BootStraps of lazy.nvim package manager
-- Which is gonna load other stuff like plugins and colorschemes
require("lazy.lazy")

-- Loads extra Keymaps for plugins and colorschemes
-- (which aren't loaded by plugins themself)
require("configs.keymaps.extra")
require("configs.keymaps.colorschemes")

-- Applys a greeting screen configuration and logo using alpha-nvim
-- It's loaded here because in other ways it becomes not "consistent"
require("configs.plugins.alpha-nvim")

-- Command to set catppuccin-mocha theme after loading it with lazy.nvim
vim.cmd.colorscheme "catppuccin-mocha"

