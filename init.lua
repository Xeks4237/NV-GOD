-- NOTE: This two options sets <leader> key of NeoVim to Space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NOTE: Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Setting options
require("nvgod.options") -- Sources lua/options.lua file

-- Basic Keymaps
require("nvgod.core-keymaps") -- Sources lua/keymaps/core.lua file

-- Install "lazy.nvim" plugin manager
require("nvgod.lazy.lazy-bootstrap")

-- Extra Keymaps related to plugins
require("nvgod.extra-keymaps")

-- Tmp keymap to set colorscheme to catppuccin-mocha:
vim.cmd.colorscheme "catppuccin-mocha"
