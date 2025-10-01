-- This file is loaded through init.lua

-- Opens lazy.nvim package manager
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Lazy" })

-- Opens Mason package manager
vim.keymap.set("n", "<leader>m", "<cmd>Mason<CR>", { desc = "Mason" })

-- Keymap to open open popup with all keymaps availible
vim.keymap.set("n", "<leader>?", function()
    require("which-key").show("", { mode = "n" })
end, { desc = "Show All Keymaps" })

-- Keymap to search files using telescope plugin
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find File" })

-- Keymap to search text in files using telescope plugins live_grep mode
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Find Text" })

-- Keymap to search a list of recently opened files in telescope
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Recent Files" })

-- Keymap to open telescope window with menus for telescope
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope<CR>", { desc = "Open Telescope" })

-- Keymap to Choose file type of file using telescope
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope filetypes<CR>", { desc = "Choose File Type" })

-- Adds current file to harpoon list
vim.keymap.set("n", "<leader>hn", function() require("harpoon"):list():add() end, { desc = "Harpoon File" })

-- Opens harpoon quick menu of harpoon in telescope
vim.keymap.set("n", "<leader>hh", "<cmd>Telescope harpoon marks<CR>", { desc = "Harpoon Quick Menu" })

-- Keymaps to fast navigate to first 10 files using numbers
-- P.S 0 goes to file 10
vim.keymap.set("n", "<leader>h1", function() require("harpoon"):list():select(1) end, { desc = "Harpoon to File 1" })
vim.keymap.set("n", "<leader>h2", function() require("harpoon"):list():select(2) end, { desc = "Harpoon to File 2" })
vim.keymap.set("n", "<leader>h3", function() require("harpoon"):list():select(3) end, { desc = "Harpoon to File 3" })
vim.keymap.set("n", "<leader>h4", function() require("harpoon"):list():select(4) end, { desc = "Harpoon to File 4" })
vim.keymap.set("n", "<leader>h5", function() require("harpoon"):list():select(5) end, { desc = "Harpoon to File 5" })
vim.keymap.set("n", "<leader>h6", function() require("harpoon"):list():select(6) end, { desc = "Harpoon to File 6" })
vim.keymap.set("n", "<leader>h7", function() require("harpoon"):list():select(7) end, { desc = "Harpoon to File 7" })
vim.keymap.set("n", "<leader>h8", function() require("harpoon"):list():select(8) end, { desc = "Harpoon to File 8" })
vim.keymap.set("n", "<leader>h9", function() require("harpoon"):list():select(9) end, { desc = "Harpoon to File 9" })
vim.keymap.set("n", "<leader>h0", function() require("harpoon"):list():select(10) end, { desc = "Harpoon to File 10" })

