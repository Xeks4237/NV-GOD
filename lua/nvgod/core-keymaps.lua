-- NOTE: This file contains main keymaps of NV-GOD which are NOT related to plugins

-- <leader> key is a main key which is used in most of the keymaps for nvim
-- In this case <leader> is a Space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Makes x key don't copy symbhol under a cursor after deleting it
-- Someone likes it, someone not, just choose if you want it
vim.keymap.set("n", "x", '"_x', { desc = "Delete symbhol under the cursor" })

-- Keymaps to resize splits of window
-- by holding CTRL and pressing arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<CR>", { desc = "Vertical Resize Up" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<CR>", { desc = "Vertical Resize Down" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Horizontal Resize" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Horizontal Resize" })

-- Bufferline keymaps similar to tab navigation
vim.keymap.set("n", "<leader>bh", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>bj", "<cmd>BufferLineCloseCurrent<CR>", { desc = "Close Buffer" })
vim.keymap.set("n", "<leader>bk", "<cmd>new<CR>", { desc = "New Buffer" })
vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineCycleNext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>ba", "<cmd>BufferLineCloseOthers<CR>", { desc = "Close All Other Buffers" })
vim.keymap.set("n", "<leader>b<C-h>", "<cmd>BufferLineMovePrev<CR>", { desc = "Move Buffer Left" })
vim.keymap.set("n", "<leader>b<C-l>", "<cmd>BufferLineMoveNext<CR>", { desc = "Move Buffer Right" })

-- Tab Management
vim.keymap.set("n", "<leader>th", "<cmd>tabprevious<CR>", { desc = "Previous Tab" })
vim.keymap.set("n", "<leader>tj", "<cmd>tabclose<CR>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader>tk", "<cmd>tabnew<CR>", { desc = "New Tab" })
vim.keymap.set("n", "<leader>tl", "<cmd>tabnext<CR>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader>ta", "<cmd>tabonly<CR>", { desc = "Close All Other Tabs" })
vim.keymap.set("n", "<leader>t<C-h>", "<cmd>tabmove -1<CR>", { desc = "Move Tab Left" })
vim.keymap.set("n", "<leader>t<C-l>", "<cmd>tabmove +1<CR>", { desc = "Move Tab Right" })

-- Save file using CTRL + s
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<CR><ESC>", { desc = "Save File" })

-- Just quit everything
-- gonna give error if you have not saved changes
vim.keymap.set("n", "<C-q>", "<cmd>qa<CR>", { desc = "Quit NVim" })

-- Force quit everything
-- gonna ignore not saved changes, Can make lost of data!
vim.keymap.set("n", "<C-S-q>", "<cmd>qa!<CR>", { desc = "FORCE Quit" })

-- Keymaps to move lines of code by using ALT + j or k 
-- In Normal mode:
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move Down", silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move Up", silent = true })
-- In Insert mode:
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move Down", silent = true })
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move Up", silent = true })
-- In Visual mode:
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move Down", silent = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move Up", silent = true })

-- Clear highlights of search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Keymap to clear search, diff update and redraw easily
vim.keymap.set(
    "n",
    "<leader>ur",
    "<cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
    { desc = "Redraw / Clear hlsearch / Diff Update" }
)

-- Keymaps for easier navigation in search results
-- Makes n key to move your cursor to the next search result 
-- Makes N key to move your cursor to the previous search result 
-- Read more aboit it: https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
vim.keymap.set("n", "n", "v:searchforward ? 'n' : 'N'", { expr = true, desc = "Next Search Result" })
vim.keymap.set("n", "N", "v:searchforward ? 'N' : 'n'", { expr = true, desc = "Prev Search Result" })
vim.keymap.set("x", "n", "v:searchforward ? 'n' : 'N'", { expr = true, desc = "Next Search Result" })
vim.keymap.set("x", "N", "v:searchforward ? 'N' : 'n'", { expr = true, desc = "Prev Search Result" })
vim.keymap.set("o", "n", "v:searchforward ? 'n' : 'N'", { expr = true, desc = "Next Search Result" })
vim.keymap.set("o", "N", "v:searchforward ? 'N' : 'n'", { expr = true, desc = "Prev Search Result" })

-- Add undo break-points
-- Makes some symbols be a points where undo takes break
vim.keymap.set("i", ",", ",<c-g>u")
vim.keymap.set("i", ".", ".<c-g>u")
vim.keymap.set("i", ";", ";<c-g>u")

-- Makes indenting in visual mode more "consistent"
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Keymaps for better commenting lines like this one
vim.keymap.set("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<CR>fxa<bs>", { desc = "Add Comment Below" })
vim.keymap.set("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<CR>fxa<bs>", { desc = "Add Comment Above" })

-- Keymap to make a new file, by using CTRL + n
vim.keymap.set("n", "<C-n>", "<cmd>new<CR>", { desc = "New File" })

-- Keymap to hide a Terminal
vim.keymap.set("t", "<C-/>", "<cmd>close<CR>", { desc = "Hide Terminal" })
vim.keymap.set("t", "<c-_>", "<cmd>close<CR>", { desc = "which_key_ignore" })

