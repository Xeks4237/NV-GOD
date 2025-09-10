-- This is a Main file which NeoVim gonna use on startup
-- When you add something here please check the order of command what you write
-- Like for example you can not set colorscheme before loading it with package manager

-- And a / directory for require("") is a lua directory

-- Loads Options like LineNumbers fromoptions.lua file
require("configs.core.options")

-- Loads Keymaps from keymaps.lua file
require("configs.core.keymaps")

-- Loads a file what BootStraps of lazy.nvim package manager
-- Which is gonna load other stuff like plugins and colorschemes
require("lazy.lazy")

-- tmp command to set catppuccin-mocha theme
vim.cmd.colorscheme "catppuccin-mocha"
