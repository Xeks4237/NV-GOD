-- This file is loaded through lua/plugins/oil.lua

-- Keymaps for oil.nvim
return {
    ["g?"] = { "actions.show_help", mode = "n" },
    ["<CR>"] = { "actions.select"},
    -- <C-s> for horizontal because in default nvim keymaps it's s
    ["<C-v>"] = { "actions.select", opts = { vertical = true } },
    ["<C-s>"] = { "actions.select", opts = { horizontal = true } },
    ["<C-t>"] = { "actions.select", opts = { tab = true } },
    ["<C-p>"] = { "actions.preview" },
    ["<C-c>"] = { "actions.close", mode = "n" },
    ["<C-l>"] = { "actions.refresh" },
    ["-"] = { "actions.parent", mode = "n" },
    ["_"] = { "actions.open_cwd", mode = "n" },
    ["`"] = { "actions.cd", mode = "n" },
    ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
    ["gs"] = { "actions.change_sort", mode = "n" },
    ["gx"] = { "actions.open_external" },
    ["g."] = { "actions.toggle_hidden", mode = "n" },
}

