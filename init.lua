-- NOTE: This two options sets <leader> key of NeoVim to Space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Setting options
-- Sources lua/options.lua file
require 'options'

-- Basic Keymaps
-- Sources lua/core-keymaps.lua file
require 'core-keymaps'

-- Install "lazy.nvim" plugin manager
-- Sources lua/lazy/lazy-bootstrap.lua file
-- require 'lazy.lazy-bootstrap'

-- Extra Keymaps related to plugins
-- Sources lua/extra-keymaps.lua file
require 'extra-keymaps'

-- Load file which contains autocmds for NV-GOD
require 'autocmds'

-- Set colorscheme to catppuccin-mocha
-- vim.cmd.colorscheme 'catppuccin-mocha'
