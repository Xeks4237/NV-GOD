-- NOTE: This file is mainly needed to set additional keymaps related to plugins

-- [ Harpoon Keymaps ]
-- Adds current file to harpoon marks list
vim.keymap.set("n", "<leader>hn", function() require("harpoon"):list():add() end, { desc = "Harpoon File" })

-- Opens harpoon marks list in telescope
vim.keymap.set("n", "<leader>hh", "<cmd>Telescope harpoon marks<CR>", { desc = "Harpoon Quick Menu" })

-- Keymaps to fast navigate to first 10 harpoon marks using numbers
-- NOTE: function to do it shortly makes it hard to set letters instead of numbers
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

-- Keymap to open NeoTree
vim.keymap.set("n", "<C-e>", "<cmd>Neotree<CR>", { desc = "Open NeoTree" })

-- [ Telescope Keymaps ]
-- Search in :help pages
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "[F]ind [H]elp" })
-- Search for available keymaps
vim.keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { desc = "[F]ind [K]eymaps" })
-- Search files in current working directory
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "[F]ind [F]iles" })
-- Search Telescope menus as marks, buffers, and etc
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope builtin<CR>", { desc = "[F]ind [S]elect Telescope" })
-- Grep search word under a cursor
vim.keymap.set("n", "<leader>fw", "<cmd>Telescope grep_string<CR>", { desc = "[F]ind Current [W]ord" })
-- Grep search text in files
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "[F]ind by [G]rep" })
-- Search for available Diagnostics
vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<CR>", { desc = "[F]ind [D]iagnostics" })
-- Search recently opened files
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "[F]ind Recent Files" })
-- Search existing buffers
vim.keymap.set("n", "<leader>f<leader>", "<cmd>Telescope buffers<CR>", { desc = "[F]ind Existing Buffers" })
-- Search a file-type to set to current buffer/file
vim.keymap.set("n", "<leader>ft", "<cmd>Telescope oldfiles<CR>", { desc = "[F]ind File [T]ype" })
-- Search in your NeoVim configuration files directory
vim.keymap.set("n", "<leader>fn", function()
    builtin.find_files { cwd = vim.fn.stdpath "config" }
end , { desc = "[F]ind [N]eoVim Files" })

