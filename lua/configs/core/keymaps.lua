-- This file contains main keymaps of NV-GOD
-- Most of the file is inspired by keymaps of
-- LazyVim and personal keymaps of my Friend

-- P.S If you are new in NVim please write :Tutor command and after completing simple tutorial, return here

-- In NVim some keys are writed shortly like for example:
-- "CTRL + a" is a <C-a>
-- "SHIFT + a" is a <S-a>
-- "ALT + a" is a <A-a>

-- <leader> key is a main key which is used in most of the keymaps for start
-- In this case <leader> is a space key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Makes x key don't copy symbhol under a cursor after deleting it
-- Someone likes it, someone not, just choose if you want it
vim.keymap.set("n", "x", '"_x' )

-- Keymaps for creating splits of window
vim.keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split window horizontally", remap = true })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split window vertically", remap = true })
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Close window splith", remap = true })

-- Keymaps to resize splits of window
-- by holding CTRL and pressing arrow keys
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Navigating beetween splits of window
-- by holding CTRL and pressing hjkl (like ←↓↑→)
vim.keymap.set("n", '<C-k>', ':wincmd k<CR>')
vim.keymap.set("n", '<C-j>', ':wincmd j<CR>')
vim.keymap.set("n", '<C-h>', ':wincmd h<CR>')
vim.keymap.set("n", '<C-l>', ':wincmd l<CR>')

-- Tab Managment
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<C-Tab>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<C-S-Tab>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
vim.keymap.set("n", "<leader>tw", "<cmd>tabclose<cr>", { desc = "Close Tab" })

-- Open NetRw Directory Listing (BuiltIn Explorer of NVim)
-- It's tmp keymap
vim.keymap.set("n", "<C-e>", ":Ex<CR>")

-- Save file with CTRL + s
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><ESC>", { desc = "Save File" })

-- Just quit everything
-- gonna give error if you have not saved changes
vim.keymap.set("n", "<C-q>", "<cmd>qa<CR>", { desc = "Quit NVim" })

-- Force quit everything
-- gonna ignore not saved changes, Can make lost of data!
vim.keymap.set("n", "<leader><C-q>", "<cmd>qa!<CR>", { desc = "FORCE quit NVim" })

-- Opens lazy.nvim package manager
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- Opens Mason package manager
vim.keymap.set("n", "<leader>m", "<cmd>Mason<cr>", { desc = "Mason" })

-- Keymaps to move lines of code by using:
-- ALT + j or k on the line with cursor or
-- on the lines of code chosen on visual mode
vim.keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- Buffer Managment
-- I recomment you to read some documentation on what is that
-- Because description gonna take to much lines :/
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

-- Keymap to clear search, diff update and redraw easyly
vim.keymap.set(
    "n",
    "<leader>fr",
    "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
    { desc = "Redraw / Clear hlsearch / Diff Update" }
)

-- Keymaps for easier navigation on search results on file
-- Read more about this thing on:
-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
vim.keymap.set("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next Search Result" })
vim.keymap.set("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
vim.keymap.set("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
vim.keymap.set("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev Search Result" })
vim.keymap.set("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
vim.keymap.set("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })

-- Add undo break-points
-- Makes some symbhols be a points where undo takes break
vim.keymap.set("i", ",", ",<c-g>u")
vim.keymap.set("i", ".", ".<c-g>u")
vim.keymap.set("i", ";", ";<c-g>u")

-- Ability to search in man word under a cursor
vim.keymap.set("n", "<leader>K", "<cmd>norm! K<cr>", { desc = "Keywordprg" })

-- Makes indenting in visual mode more "consistent"
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Keymaps for better commenting lines like this one
vim.keymap.set("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
vim.keymap.set("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })

-- Keymap to make a new file, by using CTRL + n
vim.keymap.set("n", "<C-n>", "<cmd>enew<cr>", { desc = "New File" })

-- Location list is a location list 🗿
vim.keymap.set("n", "<leader>xl", function()
  local success, err = pcall(vim.fn.getloclist(0, { winid = 0 }).winid ~= 0 and vim.cmd.lclose or vim.cmd.lopen)
  if not success and err then
    vim.notify(err, vim.log.levels.ERROR)
  end
end, { desc = "Location List" })

-- Quickfix list is a quickfix list 🗿
vim.keymap.set("n", "<leader>xq", function()
  local success, err = pcall(vim.fn.getqflist({ winid = 0 }).winid ~= 0 and vim.cmd.cclose or vim.cmd.copen)
  if not success and err then
    vim.notify(err, vim.log.levels.ERROR)
  end
end, { desc = "Quickfix List" })

vim.keymap.set("n", "[q", vim.cmd.cprev, { desc = "Previous Quickfix" })
vim.keymap.set("n", "]q", vim.cmd.cnext, { desc = "Next Quickfix" })

-- Inspecting under a cursor
vim.keymap.set("n", "<leader>ui", vim.show_pos, { desc = "Inspect Pos" })
vim.keymap.set("n", "<leader>uI", function() vim.treesitter.inspect_tree() vim.api.nvim_input("I") end, { desc = "Inspect Tree" })

-- Keymap to hide a Terminal
vim.keymap.set("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
vim.keymap.set("t", "<c-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })


-- Native snippets. only needed on < 0.11, as 0.11 creates these by default
-- If you are in correct version which doesn't needs that,
-- Then you just can remove this part of a code
if vim.fn.has("nvim-0.11") == 0 then
  vim.keymap.set("s", "<Tab>", function()
    return vim.snippet.active({ direction = 1 }) and "<cmd>lua vim.snippet.jump(1)<cr>" or "<Tab>"
  end, { expr = true, desc = "Jump Next" })
  vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
    return vim.snippet.active({ direction = -1 }) and "<cmd>lua vim.snippet.jump(-1)<cr>" or "<S-Tab>"
  end, { expr = true, desc = "Jump Previous" })
end

