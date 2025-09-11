-- This file is loadedd using init.lua instead of plugin.lua
-- Because it's more easy and convenient to do
-- P.S I used a theme from 
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
-- Set header/logo which we need
dashboard.section.header.val = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                        btw                          ",
}

-- Sets buttons which gonna be shown below the logo with their icons
dashboard.section.buttons.val = {
            dashboard.button("n", "  New File", "<cmd>ene | startinsert<CR>"),
            dashboard.button("r", "  Recent Files", "<cmd>Telescope oldfiles<CR>"),
            dashboard.button("f", "  Find File", "<cmd>Telescope find_files<CR>"),
            dashboard.button("g", "  Find Text", "<cmd>Telescope live_grep<CR>"),
            dashboard.button("l", "󰒲  Lazy", "<cmd>Lazy<CR>"),
            dashboard.button("m", "  Mason", "<cmd>Mason<CR>"),
            dashboard.button("c", "  Config", "<cmd>Telescope find_files cwd=~/.config/nvim<CR>"),
            dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])

