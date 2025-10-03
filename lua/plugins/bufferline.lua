-- This file is loaded through lua/lazy/plugins.lua

-- Configuration for bufferline
return {
    options = {
        -- Sets the mode. Valid options are "bufferline" and "tabs"
        mode = "tabs",
        -- Numbering style for buffer names.
        numbers = "ordinal",  -- "ordinal", "buffer_id", (function), false
        -- Adds padding around buffer numbers.
        number_style = "superscript",  -- "superscript" | "subscript" | "" | false
        -- Sets the maximum buffer name length.
        max_name_length = 20,
        -- Sets the minimum buffer name length.
        min_length = 5,
        -- Truncation method for buffer names.
        truncate_names = true,  -- whether or not to truncate the text to omit prefix parts of a long name
        -- Separator style for buffers.
        separator_style = "thin",  -- "slant" | "thick" | "thin" | { "any", "any" }
        -- Padding for buffer content.
        padding = 1,  -- number for fixed padding | boolean
        -- Whether to show diagnostic icons.
        diagnostics = nvim_lsp,  -- false | "nvim_lsp" | "coc"
        -- Highlight for diagnostic categories.
        diagnostics_first_element = true,  -- boolean | string
        -- Update diagnostics in real-time.
        diagnostics_update_in_insert = true,
        -- Date format for date buffers.
        date_format = "%m-%d-%y %H:%M",
        -- Whether to show all buffers.
        show_all_buffers = true,
        -- Whether to persist buffer selection across sessions.
        persist_buffer_sort = true,
        -- Whether to show buffer close icons.
        show_buffer_close_icons = true,
        -- Whether to show buffer icons.
        show_buffer_icons = true,
        -- Whether to show close command.
        close_command = "Bdelete! %d",  -- can be a string | function, see ":h bufdel"
        -- Right-click command.
        right_mouse_command = nil,
        -- Left mouse command.
        left_mouse_command = "buffer %d",
        -- Middle mouse command.
        middle_mouse_command = "Bdelete! %d",  -- can be a function | nil
        -- Whether to show tabpages.
        show_tab_indicators = false,
        -- Whether to persist tab order.
        persist_buffer_sort = true,  -- whether or not custom sorted buffers should persist
        -- Whether to move existing buffers when creating a new one.
        move_existing_buffers = true,
        -- Tabpages mode options.
        tab_size = 20,
        -- Incline mode options.
        incline = {
            -- Whether to display the bufferline in the window title.
            display_on_incline = true,
            -- Padding for incline.
            padding = 1,
            -- Separator for incline.
            separator = "▎",
        },
        -- Window options.
        window = {
            -- Minimum buffer count to show bufferline.
            show_to_end_of_window = true,
            -- Minimum buffer count for bufferline.
            minimum_padding = 1,
            -- Minimum width for bufferline.
            minimum_width = 5,
        },
        -- Hover options.
        hover = {
            -- Whether hover is enabled.
            enabled = true,
            -- Delay for hover.
            delay = 150,
            -- What to reveal on hover.
            reveal = { "close" },
        },
        -- Preview options.
        preview = {
            -- What to show on preview.
            show_preview_in_rename = true,
            -- Preview exclude filetypes.
            preview_exclude = {
                "dashboard",
                "alpha",
                "lazy",
            },
        },
        -- Color options.
        color_icons = true,
        -- Whether to use colors for icons.
        all_close_icon_color = true,
        -- Close icon.
        close_icon = "",
        -- Left end icon.
        left_trunc_marker = "",
        -- Right end icon.
        right_trunc_marker = "",
        -- Maximum length of truncation marker.
        max_trunc_length = 2,
        -- Truncation direction.
        trunc_marker = "…",
        -- Buffer icon.
        buffer_number_icon = true,
        -- Whether to show modified state.
        show_modified_state = true,
        -- Modified state icon.
        modified_state_icon = "●",
        -- Language server icon.
        lsp_icon = "",
        -- Language server errors icon.
        lsp_errors_icon = "󰅚",
        -- Language server warnings icon.
        lsp_warnings_icon = "󰀪",
        -- Language server hints icon.
        lsp_hints_icon = "󰌵",
        -- Language server info icon.
        lsp_info_icon = "󰋽",
        -- Language server ok icon.
        lsp_ok_icon = "󰟦",
        -- Pin icon.
        pin_icon = "󰐃",
        -- Pin highlighted icon.
        pin_highlighted_icon = "󰐃",
        -- Offsets for sidebars.
        offsets = nil,
        -- Whether to show nvim-tree in buffer tabs.
        show_nvim_tree = false,
        -- Whether to use nvim-web-devicons.
        use_web_devicons = true,
        -- Custom devicons.
        devicons = {
            -- Lock icon.
            lock = "󰌾",
            -- Lock open icon.
            lock_open = "󰌿",
            -- Unlocked icon.
            unlocked = "󰌿",
            -- Folder icon.
            folder = "󰉋",
            -- File icon.
            file = "󰈙",
        },
        -- Alphabet for picking buffers.
        pick = {
            -- Alphabet for selection.
            alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
        },
        groups = {
            -- Items options for groups.
            items = {
                -- Group 1 options.
                {
                    -- Name of the group.
                    name = "buffers",
                    -- Highlight group for the group.
                    highlight = { gui = "underline", sp = "#1f1f1f" },
                    -- Icon for the group.
                    icon = "B",
                    -- Priority for the group.
                    priority = 2,
                },
                -- Group 2 options.
                {
                    -- Name of the group.
                    name = "tabs",
                    -- Highlight group for the group.
                    highlight = { gui = "NONE" },
                    -- Icon for the group.
                    icon = "T",
                    -- Priority for the group.
                    priority = 1,
                },
                -- Group 3 options.
                {
                    -- Name of the group.
                    name = "NvimTree",
                    -- Highlight group for the group.
                    highlight = { gui = "NONE", guibg = "NONE", guifg = "NONE" },
                    -- Icon for the group.
                    icon = "󰙅",
                    -- Priority for the group.
                    priority = 0,
                },
                -- Group 4 options.
                {
                    -- Name of the group.
                    name = "lazy",
                    -- Highlight group for the group.
                    highlight = { gui = "NONE", guibg = "NONE", guifg = "NONE" },
                    -- Icon for the group.
                    icon = "󰒲",
                    -- Priority for the group.
                    priority = -1,
                },
            },
        },
    },
}

