-- This file contains main keymaps of NV-GOD which are NOT related to plugins

-- P.S If you are new in NVim please write :Tutor command and after completing simple tutorial, return here

-- In NVim some keys are writed shortly like for example:
-- "CTRL + a" is a <C-a>
-- "SHIFT + a" is a <S-a>
-- "ALT + a" is a <A-a>

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

-- Navigating between splits of window
-- by holding CTRL and pressing hjkl (like ←↓↑→)
vim.keymap.set("n", '<C-h>', '<cmd>wincmd h<CR>')
vim.keymap.set("n", '<C-j>', '<cmd>wincmd j<CR>')
vim.keymap.set("n", '<C-k>', '<cmd>wincmd k<CR>')
vim.keymap.set("n", '<C-l>', '<cmd>wincmd l<CR>')

-- Tab Managment
vim.keymap.set("n", "<leader>th", "<cmd>tabprevious<CR>", { desc = "Previous Tab" })
vim.keymap.set("n", "<leader>tj", "<cmd>tabclose<CR>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader>tk", "<cmd>tabnew<CR>", { desc = "New Tab" })
vim.keymap.set("n", "<leader>tl", "<cmd>tabnext<CR>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader>ta", "<cmd>tabonly<CR>", { desc = "Close All Other Tabs" })
vim.keymap.set("n", "<leader>t<C-h>", "<cmd>tabmove -1<CR>", { desc = "Move Tab Left" })
vim.keymap.set("n", "<leader>t<C-l>", "<cmd>tabmove +1<CR>", { desc = "Move Tab Right" })

-- tmp key to open panel with bulitin file explorer of NeoVim
vim.keymap.set("n", "<C-e>", "<cmd>Ex<CR>", { desc = "File Explorer" })

-- Save file using CTRL + s
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<CR><ESC>", { desc = "Save File" })

-- Just quit everything
-- gonna give error if you have not saved changes
vim.keymap.set("n", "<C-q>", "<cmd>qa<CR>", { desc = "Quit NVim" })

-- Force quit everything
-- gonna ignore not saved changes, Can make lost of data!
vim.keymap.set("n", "<leader><C-q>", "<cmd>qa!<CR>", { desc = "FORCE Quit NVim" })

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

-- Buffer Managment
-- I recomment you to read some documentation on what is that
-- Because description gonna take to much lines 
vim.keymap.set("n", "<leader>bh", "<cmd>bprevious<CR>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<leader>bl", "<cmd>bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bk", "<cmd>e #<CR>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>bj", "<cmd>bd<CR>", { desc = "Delete Buffer and Window" })

-- Clear highlights of search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Keymap to clear search, diff update and redraw easyly
vim.keymap.set(
    "n",
    "<leader>fr",
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

-- Ability to search in mandoc word under a cursor
vim.keymap.set("n", "<leader>K", "<cmd>norm! K<CR>", { desc = "Keywordprg" })

-- Makes indenting in visual mode more "consistent"
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Keymaps for better commenting lines like this one
vim.keymap.set("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<CR>fxa<bs>", { desc = "Add Comment Below" })
vim.keymap.set("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<CR>fxa<bs>", { desc = "Add Comment Above" })

-- Keymap to make a new file, by using CTRL + n
vim.keymap.set("n", "<C-n>", "<cmd>enew<CR>", { desc = "New File" })

-- Location list is a location list 🗿
-- P.S in most cases it's useless but some people wants it
vim.keymap.set("n", "<leader>ul", function()
  local success, err = pcall(vim.fn.getloclist(0, { winid = 0 }).winid ~= 0 and vim.cmd.lclose or vim.cmd.lopen)
  if not success and err then
    vim.notify(err, vim.log.levels.ERROR)
  end
end, { desc = "Location List" })

-- Quickfix list is a quickfix list 🗿
-- P.S in most cases it's useless but some people wants it
vim.keymap.set("n", "<leader>uq", function()
  local success, err = pcall(vim.fn.getqflist({ winid = 0 }).winid ~= 0 and vim.cmd.cclose or vim.cmd.copen)
  if not success and err then
    vim.notify(err, vim.log.levels.ERROR)
  end
end, { desc = "Quickfix List" })

vim.keymap.set("n", "[q", vim.cmd.cprev, { desc = "Previous Quickfix" })
vim.keymap.set("n", "]q", vim.cmd.cnext, { desc = "Next Quickfix" })

-- Inspecting under a cursor
vim.keymap.set("n", "<leader>up", vim.show_pos, { desc = "Inspect Pos" })
vim.keymap.set("n", "<leader>ut", function() vim.treesitter.inspect_tree() vim.api.nvim_input("I") end, { desc = "Inspect Tree" })

-- Keymap to hide a Terminal
vim.keymap.set("t", "<C-/>", "<cmd>close<CR>", { desc = "Hide Terminal" })
vim.keymap.set("t", "<c-_>", "<cmd>close<CR>", { desc = "which_key_ignore" })


-- Native snippets. only needed on < 0.11, as 0.11 creates these by default
-- If you are in correct version which doesn't needs that,
-- Then you just can remove this part of a code
if vim.fn.has("nvim-0.11") == 0 then
  vim.keymap.set("s", "<Tab>", function()
    return vim.snippet.active({ direction = 1 }) and "<cmd>lua vim.snippet.jump(1)<CR>" or "<Tab>"
  end, { expr = true, desc = "Jump Next" })
  vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
    return vim.snippet.active({ direction = -1 }) and "<cmd>lua vim.snippet.jump(-1)<CR>" or "<S-Tab>"
  end, { expr = true, desc = "Jump Previous" })
end

