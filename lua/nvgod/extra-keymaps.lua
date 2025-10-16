-- NOTE: This file is mainly needed to set additional keymaps related to plugins

-- Keymap to open NeoTree
vim.keymap.set("n", "<C-e>", "<cmd>Neotree<CR>", { desc = "Open NeoTree" })

-- Telescope Keymaps
-- Enable Telescope extensions if they are installed
pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "ui-select")

vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "[F]ind [H]elp" })
vim.keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { desc = "[F]ind [K]eymaps" })
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "[F]ind [F]iles" })
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope builtin<CR>", { desc = "[F]ind [S]elect Telescope" })
vim.keymap.set("n", "<leader>fw", "<cmd>Telescope grep_string<CR>", { desc = "[F]ind current [W]ord" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "[F]ind by [G]rep" })
vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<CR>", { desc = "[F]ind [D]iagnostics" })
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "[F]ind Recent Files" })
vim.keymap.set("n", "<leader><leader>", "<cmd>Telescope buffers<CR>", { desc = "[ ] Find existing buffers" })

-- Keymap for searching in your NeoVim configuration files in telescope
vim.keymap.set("n", "<leader>fn", function()
    builtin.find_files { cwd = vim.fn.stdpath "config" }
end , { desc = "[F]ind [N]eovim files" })

