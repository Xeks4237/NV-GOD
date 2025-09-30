-- This is a Main file which NeoVim gonna use on startup
-- When you add something here please check the order of commands what you write
-- Like for example you can not set colorscheme before loading it with package manager

-- Loads Options like LineNumbers from options.lua file
require("options")

-- Loads core Keymaps from keymaps directory
require("keymaps.core")

-- Loads a file which BootStraps lazy.nvim package manager
require("lazy.bootstrap")

-- Loads extra Keymaps for plugins and colorschemes after BootStrapping lazy.nvim
-- (which aren't loaded by plugins themselves)
require("keymaps.extra")
require("keymaps.colorschemes")

-- Applys a greeting screen configuration using alpha-nvim
-- It's loaded here because in other ways it becomes not "consistent"
require("plugins.alpha-nvim")

-- Command to set catppuccin-mocha colorscheme in end
vim.cmd.colorscheme("catppuccin-mocha")

