-- This file is loaded through init.lua
-- there goes a keymaps related to plugins which are not loaded by plugins itself

-- Opens lazy.nvim package manager
vim.keymap.set("n", "<leader>l", "<cmd>Lazy show<CR>", { desc = "Lazy" })

-- Opens Mason package manager
vim.keymap.set("n", "<leader>m", "<cmd>Mason<CR>", { desc = "Mason" })

-- Keymap to open open popup with all keymaps available
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

-- Keymap to open colorscheme chooser in telescope
vim.keymap.set("n", "<leader>uc", "<cmd>Telescope colorscheme<CR>", { desc = "ColorScheme Picker" })

-- Keymap to Show greeting screen
vim.keymap.set("n", "<leader>ug", "<cmd>Alpha<CR>", { desc = "Greeting Screen" })

-- Keymap to Choose file type of file using telescope
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope filetypes<CR>", { desc = "Choose File Type" })

-- Adds current file to harpoon list
vim.keymap.set("n", "<leader>hn", function() require("harpoon"):list():add() end, { desc = "Harpoon File" })

-- Opens harpoon quick menu of harpoon in telescope
vim.keymap.set("n", "<leader>hh", "<cmd>Telescope harpoon marks<CR>", { desc = "Harpoon Quick Menu" })

-- Keymaps to fast navigate to first 10 harpoon marks using numbers
-- P.S function to make it shortly uses more ram/memory
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


-- Location list is a location list...
-- P.S in most cases it's useless but some people wants it
vim.keymap.set("n", "<leader>dl", function()
  local success, err = pcall(vim.fn.getloclist(0, { winid = 0 }).winid ~= 0 and vim.cmd.lclose or vim.cmd.lopen)
  if not success and err then
    vim.notify(err, vim.log.levels.ERROR)
  end
end, { desc = "Location List" })

-- Quickfix list is a quickfix list...
-- P.S in most cases it's useless but some people wants it
vim.keymap.set("n", "<leader>dq", function()
  local success, err = pcall(vim.fn.getqflist({ winid = 0 }).winid ~= 0 and vim.cmd.cclose or vim.cmd.copen)
  if not success and err then
    vim.notify(err, vim.log.levels.ERROR)
  end
end, { desc = "Quickfix List" })

vim.keymap.set("n", "[q", vim.cmd.cprev, { desc = "Previous Quickfix" })
vim.keymap.set("n", "]q", vim.cmd.cnext, { desc = "Next Quickfix" })

-- Inspecting under a cursor
vim.keymap.set("n", "<leader>dp", vim.show_pos, { desc = "Inspect Pos" })
vim.keymap.set("n", "<leader>dt", function() vim.treesitter.inspect_tree() vim.api.nvim_input("I") end, { desc = "Inspect Tree" })

-- Keymap to open oil.nvim file explorer
vim.keymap.set("n", "<C-e>", "<cmd>Oil<CR>", { desc = "File Explorer" })

-- Keymap to open neoclip plugins menu in telescope (clipboard manager)
vim.keymap.set({ "n", "v", "i" }, "<C-p>", "<cmd>Telescope neoclip<CR>", { desc = "Open ClipBoard" })

