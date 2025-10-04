-- This file is loaded through lua/plugins/oil.lua

-- Keymaps for oil.nvim
return {
    ["g?"] = { "actions.show_help", mode = "n" },
    ["<CR>"] = { "actions.select"},
    ["<C-t>"] = { "actions.select", opts = { tab = true } },
    ["<C-p>"] = { "actions.preview" },
    ["q"] = { "actions.close", mode = "n" },
    ["gq"] = { "actions.close", mode = "n" },
    ["<C-r>"] = { "actions.refresh" },
    ["<F5>"] = { "actions.refresh" },
    ["-"] = { "actions.parent", mode = "n" },
    ["<backspace>"] = { "actions.parent", mode = "n" },
    ["~"] = { "actions.open_cwd", mode = "n" },
    ["gs"] = { "actions.change_sort", mode = "n" },
    ["gx"] = { "actions.open_external" },
    ["g."] = { "actions.toggle_hidden", mode = "n" },
}

