-- Extra keymaps for plugins

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

-- Remaps : and ? to trigger fine-cmdline plugin instead of default menu
vim.keymap.set({ "n", "v" }, ":", "<cmd>FineCmdline<CR>")

