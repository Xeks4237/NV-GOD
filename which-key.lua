-- All settings for defined here,
-- But keymap groups of plugins are registered seperatly in file with keymaps of plugins

return {
    icons = { -- Configure theme and icons
        keys = { -- Icons for specific keys
            Up = "↑ ",
            Down = "↓ ",
            Left = "← ",
            Right = "→ ",
            C = "Ctrl + ",
            M = "Alt + ",
            S = "Shift + ",
            CR = "Enter",
            Esc = "Esc",
            Space = "Space",
            Tab = "↹",
        },
        rules = { -- Customize icon display
            enabled = true, -- Enable icons
            -- override = { -- Override specific key labels
            --     ["<space>"] = "SPC",
            --     ["<cr>"] = "RET",
            --     ["<tab>"] = "TAB",
            -- },
        },
    },
    plugins = { -- Configure which-key plugins
        marks = true, -- Show keybindings for marks
        registers = true, -- Show keybindings for registers
        spelling = {
            enabled = true, -- Enable spelling suggestions
            suggestions = 20, -- Number of spelling suggestions
        },
        presets = { -- Enable preset mappings
            operators = true, -- Operators (e.g., d, y, c)
            motions = true, -- Motions (e.g., w, b)
            text_objects = true, -- Text objects (e.g., va", viw)
            windows = true, -- Window mappings (e.g., <C-w>)
            nav = true, -- Navigation mappings (e.g., [ ], g)
            z = true, -- z-related mappings (e.g., zt, zb)
            g = true, -- g-related mappings (e.g., gg, g_)
        },
    },
    win = { -- Configure popup window
        border = "single", -- Border: none, single, double, shadow
        no_overlap = true, -- Prevent overlap with other windows
        padding = { 1, 2 }, -- Padding: [top/bottom, left/right]
        title = true, -- Show title
        title_pos = "center", -- Title position: left, center, right
        zindex = 1000, -- Window z-index
        bo = { -- Buffer options
            filetype = "which_key",
        },
    },
    layout = { -- Configure popup layout
        theme = "modern",
        height = { min = 1, max = 30 }, -- Min/max height
        width = { min = 1, max = 30 }, -- Min/max width
        spacing = 3, -- Spacing between columns
        align = "left", -- Align columns: left, center, right
    },
    show_help = true, -- Show help message
    show_keys = true, -- Show keybinding in popup
    triggers = { "auto" }, -- Choose triggers for popup
    delay = 512, -- Delay (ms) before showing popup
    debug = false, -- Enable/Disable debug logging

    -- key_labels = { -- Override key labels for readability
    --     ["<space>"] = "SPC",
    --     ["<cr>"] = "RET",
    --     ["<tab>"] = "TAB",
    -- },
    -- hidden = {
    --     -- Allows to hide some parts of keys code in popup
    --     -- Like this ones for example:
    --     "<silent>",
    --     "<cmd>",
    --     "<Cmd>",
    --     "<CR>",
    --     "call",
    --     "lua",
    --     "^:",
    --     "^ ",
    -- },
}

