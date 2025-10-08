-- This file is loaded through lua/plugins/neoclip.lua

-- Keymaps for neoclip
return {
    -- Keymaps for neoclip in telescope ui
    telescope = {
        -- keymaps for INSERT mode
        i = {
            --- It is possible to map more than one key.
            -- paste = { "p", "<CR>" },
            paste = "<CR>", -- Keymap to paste chosen entry
            paste_behind = "<C-h>", -- Keymap to paste chosen entry behind of cursor (like P)
            select = "<C-l>", -- Keymap for selecting entry to paste later with p or P
            replay = "<C-o>", -- Replay a macro
            delete = { "<C-d>", "<C-j>" }, -- Delete an entry
            edit = { "<C-i>", "<C-k" }, -- Edit an entry
            custom = {},
        },
        -- Keymaps for NORMAL mode
        n = {
            paste = "<CR>", -- Keymap to paste chosen entry
            paste_behind = "<C-h>", -- Keymap to paste chosen entry behind of cursor (like P)
            select = "<C-l>", -- Keymap for selecting entry to paste later with p or P
            replay = "<C-o>", -- Replay a macro
            delete = { "<C-d>", "<C-j>" }, -- Delete an entry
            edit = { "<C-i>", "<C-k>" }, -- Edit an entry
            custom = {},
        },
    },
    -- Keymaps for neoclip in fzf-lua UI if available
    fzf = {
        select = "default",
        paste = "ctrl-l",
        paste_behind = "ctrl-h",
        custom = {},
    },
}
