-- NOTE: This two options sets <leader> key of NeoVim to Space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Setting options
require("nvgod.options") -- Sources lua/options.lua file

-- Basic Keymaps
require("nvgod.core-keymaps") -- Sources lua/keymaps/core.lua file

-- Install "lazy.nvim" plugin manager
require("nvgod.lazy.lazy-bootstrap")

-- Extra Keymaps related to plugins
require("nvgod.extra-keymaps")

-- OverWrite Default Settings using insides of a "custom" directory
-- require("custom.init")

-- Tmp keymap to set colorscheme to catppuccin-mocha:
vim.cmd.colorscheme("catppuccin-mocha")

