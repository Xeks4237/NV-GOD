-- This file contains all keymaps for plugins only

-- Keymaps for telescope plugin:
-- Keymap to search files using telescope plugin
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find File" })
-- Keymap to search text in files using telescope plugins live_grep mode
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Find Text" })
-- Keymap to search a list of recently opened files in telescope
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Recent Files" })
-- Keymap to search
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope<CR>", { desc = "Open Telescope" })

vim.keymap.set("n", "<leader>?", function()
    require("which-key").show("", { mode = "n" })
end, { desc = "Keymaps" })
