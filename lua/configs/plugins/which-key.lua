return {
    -- Preset for which-key appearance: "classic", "modern", "helix", or false to disable
    preset = "modern", -- Affects styling of popup menu 
    show_help = true, -- Show help message
    show_keys = true, -- Show keybinding in popup
    delay = 512, -- Delay in ms before showing popup
    debug = false, -- Enable/Disable debug logging
    layout = { -- Configure popup window (layout)
        height = { min = 1, max = 20 }, -- Height constraints for first row
        width = { min = 1, max = 30 }, -- Width constraints for columns (-1 means unlimited)
        spacing = 1, -- Spacing between items in popup
        align = "left", -- Alignment of items: "left", "center", "right"
        padding = 1, -- Padding around layout content
    },
    win = { -- Configure popup window (window)
        border = "single", -- Border: none, single, double, shadow
        no_overlap = false, -- Prevent overlap with other windows
        padding = { 1, 1 }, -- Padding: [top/bottom, left/right]
        title = true, -- Show title
        title_pos = "center", -- Title position: left, center, right
        zindex = 1069, -- Window z-index
        bo = { -- Buffer options
            filetype = "which_key",
        },
    },
    icons = {
        -- Choose icons or text for mappings
        mappings = vim.g.have_nerd_font, -- Says you have nerd font for icons
        breadcrumb = "»", -- Separator between keymap segments
        separator = "➜", -- Separator between key and description
        group = "+", -- Symbol for keymap groups
        keys = vim.g.have_nerd_font and {} or {
            -- Shows nerd font icons or text in this table
            Up = "↑",
            Down = "↓",
            Left = "←",
            Right = "→",
            C = "Ctrl ",
            M = "Meta ",
            D = "D ",
            S = "Shift ",
            -- CR and NL is a symbols what your OS chooses between when you click Enter
            -- Vim/NeoVim prefers to use CR to reprecent Enter key
            CR = "Enter", -- Carriage Return
            NL = "Enter", -- New Line
            Esc = "Esc",
            ScrollWheelDown = "ScrollWheelDown",
            ScrollWheelUp = "ScrollWheelUp",
            BS = "BackSpace",
            Space = "Space",
            Tab = "Tab",
            F1 = "F1",
            F2 = "F2",
            F3 = "F3",
            F4 = "F4",
            F5 = "F5",
            F6 = "F6",
            F7 = "F7",
            F8 = "F8",
            F9 = "F9",
            F10 = "F10",
            F11 = "F11",
            F12 = "F12",
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
}

