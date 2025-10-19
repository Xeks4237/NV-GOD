-- NOTE: This two options sets <leader> key of NeoVim to Space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Setting options
require "options" -- Sources lua/options.lua file

-- Basic Keymaps
require "core-keymaps" -- Sources lua/core-keymaps.lua file

-- Install "lazy.nvim" plugin manager
require "lazy.lazy-bootstrap" -- Sources lua/lazy/lazy-bootstrap.lua file

-- Extra Keymaps related to plugins
require "extra-keymaps" -- Sources lua/extra-keymaps.lua file

-- Tmp keymap to set colorscheme to catppuccin-mocha:
vim.cmd.colorscheme "catppuccin-mocha"
