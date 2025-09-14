-- This file is loaded using init.lua instead of plugin.lua
-- Because it's more easy and convenient to do
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
-- Set header/logo which we need
dashboard.section.header.val = {
    "                                                           ",
    "             The Best NeoVim Distro of ALL TIME            ",
    "    ███╗   ██╗██╗   ██╗      ████████╗████████╗███████╗    ",
    "    ████╗  ██║██║   ██║      ██╔═════╝██╔═══██║██╔═══██╗   ",
    "    ██╔██╗ ██║██║   ██║█████╗██║  ███╗██║   ██║██║   ██║   ",
    "    ██║╚██╗██║╚██╗ ██╔╝╚════╝██║   ██║██║   ██║██║   ██║   ",
    "    ██║ ╚████║ ╚████╔╝       ████████║████████║███████╔╝   ",
    "    ╚═╝  ╚═══╝  ╚═══╝        ╚═══════╝╚═══════╝╚══════╝    ",
    "    by Xeks4237         *not final logo           v0.0.1   ",
}

-- Sets buttons which gonna be shown below the logo with their icons
dashboard.section.buttons.val = {
    dashboard.button("n", "  New File", "<cmd>ene | startinsert<CR>"),
    dashboard.button("f", "  Find File", "<cmd>Telescope find_files<CR>"),
    dashboard.button("g", "  Find Text", "<cmd>Telescope live_grep<CR>"),
    dashboard.button("o", "  Recent Files", "<cmd>Telescope oldfiles<CR>"),
    dashboard.button("l", "󰒲  Lazy", "<cmd>Lazy<CR>"),
    dashboard.button("m", "  Mason", "<cmd>Mason<CR>"),
    dashboard.button("?", "  Keymaps", "<cmd>lua require('which-key').show('', { mode = 'n' })<CR>"),
    dashboard.button("c", "  Config", "<cmd>Telescope find_files cwd=~/.config/nvim<CR>"),
    dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])

-- P.S I gonna make this able to load .png files instead of ASCII arts in future using image.nvim plugin
-- To give you ability to set a anime girl as a logo:3
