-- NOTE: This file is mainly needed to set additional keymaps related to plugins
-- All of a this keymaps are loaded through init.lua and not by plugins themselves

-- [ UI Keymaps ]
-- Open mason
vim.keymap.set('n', '<leader>um', '<cmd>Mason<CR>', { desc = 'Open Mason' })

-- [ UI Toggle Keymaps ]
-- Toggle Line Numbers
vim.keymap.set('n', '<leader>utn', '<cmd>set number! relativenumber!<CR>', { desc = '[t]oggle Line [n]umbers' })
-- Toggle relative line numbers
vim.keymap.set('n', '<leader>utr', '<cmd>set relativenumber!<CR>', { desc = '[t]oggle [r]elative Numbers' })
-- Toggle line wrap
vim.keymap.set('n', '<leader>utw', '<cmd>set wrap! <CR>', { desc = '[t]oggle Line [w]rap' })
-- Toggle Tab Line
vim.keymap.set('n', '<leader>utt', function()
	vim.o.showtabline = vim.o.showtabline == 2 and 0 or 2
end, { desc = '[t]oggle [t]ab Line' })
-- Toggle nvim-colorizer for current file/buffer
vim.keymap.set('n', '<leader>utc', '<cmd>ColorizerToggle<CR>', { desc = '[t]oggle text [c]oloring' })
