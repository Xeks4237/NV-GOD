return {
    -- Preset for which-key appearance: "classic", "modern", "helix", or false to disable
    preset = "helix", -- Affects styling of popup menu
    delay = 250, -- Delay in ms before showing popup
    notify = true, -- Displays notifications for conflicts or issues with keymaps
    layout = {
        height = { min = 1, max = 10 }, -- Height constraints for first row
        width = { min = 1, max = 25 }, -- Width constraints for columns (-1 means not limited)
        spacing = 2, -- Spacing between items in popup
        align = "left", -- Alignment of items: "left", "center", "right"
        padding = 1, -- Padding around layout content
    },
    win = {
        -- Prevent popup from overlapping cursor
        no_overlap = false,
    },
    icons = {
        -- Choose icons or text for mappings
        mappings = vim.g.have_nerd_font, -- Says you have nerd font for icons
        keys = vim.g.have_nerd_font and {} or {
            -- Shows nerd font icons or text
            Up = '<Up> ',
            Down = '<Down> ',
            Left = '<Left> ',
            Right = '<Right> ',
            C = '<C-…> ',
            M = '<M-…> ',
            D = '<D-…> ',
            S = '<S-…> ',
            CR = '<CR> ',
            Esc = '<Esc> ',
            ScrollWheelDown = '<ScrollWheelDown> ',
            ScrollWheelUp = '<ScrollWheelUp> ',
            NL = '<NL> ',
            BS = '<BS> ',
            Space = '<Space> ',
            Tab = '<Tab> ',
            F1 = '<F1>',
            F2 = '<F2>',
            F3 = '<F3>',
            F4 = '<F4>',
            F5 = '<F5>',
            F6 = '<F6>',
            F7 = '<F7>',
            F8 = '<F8>',    
            F9 = '<F9>',
            F10 = '<F10>',
            F11 = '<F11>',
            F12 = '<F12>',
        },
    },
}
