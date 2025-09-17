-- Keymaps of telescope plugin

local telescope = require("telescope")
local actions = require("telescope.actions")

return {
    i = { -- Insert mode mappings
        ["<C-k>"] = actions.move_selection_next, -- Next item
        ["<C-j>"] = actions.move_selection_previous, -- Previous item
        ["<C-l>"] = actions.cycle_history_next, -- Next prompt history
        ["<C-h>"] = actions.cycle_history_prev, -- Previous prompt history
        ["<CR>"] = actions.select_default, -- Select item
        ["<C-x>"] = actions.select_horizontal, -- Open in horizontal window split
        ["<C-v>"] = actions.select_vertical, -- Open in vertical window split
        ["<C-t>"] = actions.select_tab, -- Open in new tab
        ["<C-u>"] = actions.preview_scrolling_up, -- Scroll preview up
        ["<C-d>"] = actions.preview_scrolling_down, -- Scroll preview down
        ["<C-c>"] = actions.close, -- Close Telescope
    },
    n = { -- Normal mode mappings
        ["<C-n>"] = actions.move_selection_next, -- Next item
        ["<C-p>"] = actions.move_selection_previous, -- Previous item
        ["<CR>"] = actions.select_default, -- Select item(<CR> is a ENTER)
        ["<C-h>"] = actions.select_horizontal, -- Open in horizontal split
        ["<C-v>"] = actions.select_vertical, -- Open in vertical split
        ["<C-t>"] = actions.select_tab, -- Open in new tab
        ["<C-u>"] = actions.preview_scrolling_up, -- Scroll preview up
        ["<C-d>"] = actions.preview_scrolling_down, -- Scroll preview down
        ["q"] = actions.close, -- Close Telescope
        -- P.S arrow keys works for navigation too
    },
}

