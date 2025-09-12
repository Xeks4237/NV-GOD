-- This file contains main keymaps of NV-GOD
-- Most of the file is inspired by keymaps of
-- LazyVim and personal keymaps of my Friend

-- P.S If you are new in NVim please write <cmd>Tutor command and after completing simple tutorial, return here

-- In NVim some keys are writed shortly like for example<cmd>
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
vim.keymap.set("n", "<leader>q", "<C-W>c", { desc = "Close window splith", remap = true })

-- Keymaps to resize splits of window
-- by holding CTRL and pressing arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<CR>")
vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<CR>")
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>")

-- Navigating beetween splits of window
-- by holding CTRL and pressing hjkl (like ←↓↑→)
vim.keymap.set("n", '<C-k>', '<cmd>wincmd k<CR>')
vim.keymap.set("n", '<C-j>', '<cmd>wincmd j<CR>')
vim.keymap.set("n", '<C-h>', '<cmd>wincmd h<CR>')
vim.keymap.set("n", '<C-l>', '<cmd>wincmd l<CR>')

-- Tab Managment
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "New Tab" })
vim.keymap.set("n", "<C-Tab>", "<cmd>tabnext<CR>", { desc = "Next Tab" })
vim.keymap.set("n", "<C-S-Tab>", "<cmd>tabprevious<CR>", { desc = "Previous Tab" })
vim.keymap.set("n", "<leader>tw", "<cmd>tabclose<CR>", { desc = "Close Tab" })

-- tmp key to open panel with bulitin file explorer of NeoVim
vim.keymap.set("n", "<C-e>", "<cmd>Ex<CR>")

-- Save file with CTRL + s
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<CR><ESC>", { desc = "Save File" })

-- Just quit everything
-- gonna give error if you have not saved changes
vim.keymap.set("n", "<C-q>", "<cmd>qa<CR>", { desc = "Quit NVim" })

-- Force quit everything
-- gonna ignore not saved changes, Can make lost of data!
vim.keymap.set("n", "<leader><C-q>", "<cmd>qa!<CR>", { desc = "FORCE quit NVim" })

-- Opens lazy.nvim package manager
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Lazy" })

-- Opens Mason package manager
vim.keymap.set("n", "<leader>m", "<cmd>Mason<CR>", { desc = "Mason" })

-- Keymaps to move lines of code by using<cmd>
-- ALT + j or k on the line with cursor or
-- on the lines of code chosen on visual mode
vim.keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v<cmd>count1<CR>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v<cmd>count1 + 1)<CR>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<CR>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<CR>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", "<cmd><C-u>execute \"'<,'>move '>+\" . v<cmd>count1<CR>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", "<cmd><C-u>execute \"'<,'>move '<-\" . (v<cmd>count1 + 1)<CR>gv=gv", { desc = "Move Up" })

-- Buffer Managment
-- I recomment you to read some documentation on what is that
-- Because description gonna take to much lines <cmd>/
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "[b", "<cmd>bprevious<CR>", { desc = "Prev Buffer" })
vim.keymap.set("n", "]b", "<cmd>bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bb", "<cmd>e #<CR>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>`", "<cmd>e #<CR>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>bD", "<cmd><cmd>bd<CR>", { desc = "Delete Buffer and Window" })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Keymap to clear search, diff update and redraw easyly
vim.keymap.set(
    "n",
    "<leader>fr",
    "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
    { desc = "Redraw / Clear hlsearch / Diff Update" }
)

-- Keymaps for easier navigation on search results on file
-- Read more about this thing on this github page:
-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
vim.keymap.set("n", "n", "'Nn'[v<cmd>searchforward].'zv'", { expr = true, desc = "Next Search Result" })
vim.keymap.set("x", "n", "'Nn'[v<cmd>searchforward]", { expr = true, desc = "Next Search Result" })
vim.keymap.set("o", "n", "'Nn'[v<cmd>searchforward]", { expr = true, desc = "Next Search Result" })
vim.keymap.set("n", "N", "'nN'[v<cmd>searchforward].'zv'", { expr = true, desc = "Prev Search Result" })
vim.keymap.set("x", "N", "'nN'[v<cmd>searchforward]", { expr = true, desc = "Prev Search Result" })
vim.keymap.set("o", "N", "'nN'[v<cmd>searchforward]", { expr = true, desc = "Prev Search Result" })

-- Add undo break-points
-- Makes some symbhols be a points where undo takes break
vim.keymap.set("i", ",", ",<c-g>u")
vim.keymap.set("i", ".", ".<c-g>u")
vim.keymap.set("i", ";", ";<c-g>u")

-- Ability to search in man word under a cursor
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
vim.keymap.set("n", "<leader>xl", function()
  local success, err = pcall(vim.fn.getloclist(0, { winid = 0 }).winid ~= 0 and vim.cmd.lclose or vim.cmd.lopen)
  if not success and err then
    vim.notify(err, vim.log.levels.ERROR)
  end
end, { desc = "Location List" })

-- Quickfix list is a quickfix list 🗿
-- P.S in most cases it's useless but some people wants it
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

