-- NOTE: This file is mainly needed to set additional keymaps related to plugins
-- All of a this keymaps are loaded through init.lua and not by plugins themselves

-- [ Harpoon Keymaps ]
-- Adds current file to harpoon marks list
vim.keymap.set("n", "<leader>hn", function()
    require("harpoon"):list():add()
end, { desc = "[h]arpoon [n]ew File" })

-- Opens harpoon marks list in telescope
vim.keymap.set("n", "<leader>hh", "<cmd>Telescope harpoon marks<CR>", { desc = "[h]arpoon Quick Menu" })

-- Keymaps to fast navigate to first 10 harpoon marks using numbers
-- NOTE: function to do it shortly makes it hard to set letters instead of numbers
vim.keymap.set("n", "<leader>h1", function()
    require("harpoon"):list():select(1)
end, { desc = "[h]arpoon to File [1]" })
vim.keymap.set("n", "<leader>h2", function()
    require("harpoon"):list():select(2)
end, { desc = "[h]arpoon to File [2]" })
vim.keymap.set("n", "<leader>h3", function()
    require("harpoon"):list():select(3)
end, { desc = "[h]arpoon to File [3]" })
vim.keymap.set("n", "<leader>h4", function()
    require("harpoon"):list():select(4)
end, { desc = "[h]arpoon to File [4]" })
vim.keymap.set("n", "<leader>h5", function()
    require("harpoon"):list():select(5)
end, { desc = "[h]arpoon to File [5]" })
vim.keymap.set("n", "<leader>h6", function()
    require("harpoon"):list():select(6)
end, { desc = "[h]arpoon to File [6]" })
vim.keymap.set("n", "<leader>h7", function()
    require("harpoon"):list():select(7)
end, { desc = "[h]arpoon to File [7]" })
vim.keymap.set("n", "<leader>h8", function()
    require("harpoon"):list():select(8)
end, { desc = "[h]arpoon to File [8]" })
vim.keymap.set("n", "<leader>h9", function()
    require("harpoon"):list():select(9)
end, { desc = "[h]arpoon to File [9]" })
vim.keymap.set("n", "<leader>h0", function()
    require("harpoon"):list():select(10)
end, { desc = "[h]arpoon to File 1[0]" })

-- Keymap to open NeoTree using: CTRL e
-- by default you can open NeoTree using backslash \
-- vim.keymap.set("n", "<C-e>", "<cmd>Neotree<CR>", { desc = "Open NeoTree" })

-- [ Telescope Keymaps ]
-- Search in :help pages
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "[f]ind [h]elp" })
-- Search for available keymaps
vim.keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { desc = "[f]ind [k]eymaps" })
-- Search files in current working directory
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "[f]ind [f]iles" })
-- Search Telescope menus as marks, buffers, and etc
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope builtin<CR>", { desc = "[f]ind [s]elect Telescope" })
-- Grep search word under a cursor
vim.keymap.set("n", "<leader>fw", "<cmd>Telescope grep_string<CR>", { desc = "[f]ind Current [w]ord" })
-- Grep search text in files
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "[f]ind by [g]rep" })
-- Search for available Diagnostics
vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<CR>", { desc = "[f]ind [d]iagnostics" })
-- Search recently opened files
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "[f]ind Recent Files" })
-- Search existing buffers
vim.keymap.set("n", "<leader>f<leader>", "<cmd>Telescope buffers<CR>", { desc = "[f]ind Existing Buffers" })
-- Search a file-type to set to current buffer/file
vim.keymap.set("n", "<leader>ft", "<cmd>Telescope filetypes<CR>", { desc = "[f]ind File [t]ype" })
-- Search in your NeoVim configuration files directory
vim.keymap.set("n", "<leader>fn", function()
    builtin.find_files { cwd = vim.fn.stdpath "config" }
end, { desc = "[f]ind [n]eovim Files" })

-- [ UI Keymaps ]
-- Search and preview colorschemes in telescope
vim.keymap.set("n", "<leader>uc", "<cmd>Telescope colorscheme<CR>", { desc = "[u]I Pick [c]olorscheme" })

-- [ UI Toggle Keymaps ]
-- Toogle Line Numbers
vim.keymap.set("n", "<leader>utn", "<cmd>set number! relativenumber!<CR>", { desc = "[t]oggle Line [n]umbers" })
-- Toggle relative line numbers
vim.keymap.set("n", "<leader>utr", "<cmd>set relativenumber!<CR>", { desc = "[t]oggle [r]elative Numbers" })
-- Toggle line wrap
vim.keymap.set("n", "<leader>utw", "<cmd>set wrap! <CR>", { desc = "[t]oggle Line [w]rap" })
vim.keymap.set("n", "<leader>utt", function()
    vim.o.showtabline = vim.o.showtabline == 2 and 0 or 2
end, { desc = "[t]oggle [t]ab Line" })
