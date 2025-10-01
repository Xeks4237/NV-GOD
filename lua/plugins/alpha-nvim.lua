-- This file is loaded using init.lua instead of plugins.lua
-- Because it's more convenient to do

-- Configuration for alpha-nvim
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header/logo
dashboard.section.header.val = {
    "                                                           ",
    "              The Best NeoVim Distro of ALL TIME           ",
    "    ███╗   ██╗██╗   ██╗      ████████╗████████╗███████╗    ",
    "    ████╗  ██║██║   ██║      ██╔═════╝██╔═══██║██╔═══██╗   ",
    "    ██╔██╗ ██║██║   ██║█████╗██║  ███╗██║   ██║██║   ██║   ",
    "    ██║╚██╗██║╚██╗ ██╔╝╚════╝██║   ██║██║   ██║██║   ██║   ",
    "    ██║ ╚████║ ╚████╔╝       ████████║████████║███████╔╝   ",
    "    ╚═╝  ╚═══╝  ╚═══╝        ╚═══════╝╚═══════╝╚══════╝    ",
    "    by Xeks4237                                   v0.0.1   ",
}

-- Sets buttons which gonna be shown below the logo with their icons
dashboard.section.buttons.val = {
    dashboard.button("n", "  New File", "<cmd>ene | startinsert<CR>"), -- Opens a new file
    dashboard.button("f", "  Find File", "<cmd>Telescope find_files<CR>"), -- Allows to search files in directory where you opened nvim
    dashboard.button("g", "  Find Text", "<cmd>Telescope live_grep<CR>"), -- Allows to Search text in files using live_grep of telescope plugin
    dashboard.button("o", "  Recent Files", "<cmd>Telescope oldfiles<CR>"), -- Allows to Search files which are were opened before using telescope plugin
    dashboard.button("l", "󰒲  Lazy", "<cmd>Lazy<CR>"), -- Opens ui of lazy.nvim package maneger
    dashboard.button("m", "  Mason", "<cmd>Mason<CR>"), -- Opens ui of mason.nvim
    -- dashboard.button("q", " Get Help", ""), -- Future documentation gonna go here
    dashboard.button("?", "  Keymaps", "<cmd>lua require('which-key').show('', { mode = 'n' })<CR>"), -- Shows popup of which-key plugin with most the keymaps
    dashboard.button("c", "  Config", "<cmd>Telescope find_files cwd=~/.config/nvim<CR>"), -- Allows to Search files in directory with nvim configs
    dashboard.button("q", "  Quit", "<cmd>qa<CR>"), -- Quits nvim
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])

-- P.S I gonna make this able to load .png files instead of ASCII arts
-- In the future using image.nvim library
-- To give you ability to set a anime girl as a logo:3

