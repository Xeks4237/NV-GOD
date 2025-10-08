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
            select = "<C><space>", -- Keymap for selecting entry to paste later with p or P
            replay = "<C-r>", -- Replay a macro
            delete = "<C-d>", -- Delete an entry
            edit = "<C-e>", -- Edit an entry
            custom = {},
        },
        -- Keymaps for NORMAL mode
        n = {
            paste = "p", -- Keymap to paste chosen entry
            paste_behind = "P", -- Keymap to paste chosen entry behind of cursor (like P)
            select = "<CR>", -- Keymap for selecting entry to paste later with p or P
            replay = { "r", "<C-r>" }, -- Replay a macro
            delete = { "d", "<C-d>" }, -- Delete an entry
            edit = { "e", "<C-e>" }, -- Edit an entry
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
