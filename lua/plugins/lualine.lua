-- This file is loaded through lua/lazy/plugins.lua

-- Configuration for lualine
-- For now this only has default configuration of lualine
-- with some extra comments
return {
    options = {
        icons_enabled = true, -- Enables/Disables icons for lualine

        -- sets a colorscheme of lualine
        theme = "auto", -- "auto" makes theme for lualine using color of your colorscheme

        -- Sets a symbhols for seperators of components and sections
        component_separators = { left = "", right = ""},
        section_separators = { left = "", right = ""},

        disabled_filetypes = { -- Disables some stuff to show lualine correctly
            statusline = {}, -- disables default status line of nvim
            winbar = {}, -- disables winbar
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
            -- Sets priority for refresh of element (ignore it)
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,

            refresh_time = 16, -- Approximatly 60fps
            events = {
                -- Events which triggers update of lualine
                "WinEnter",
                "BufEnter",
                "BufWritePost",
                "SessionLoadPost",
                "FileChangedShellPost",
                "VimResized",
                "Filetype",
                "CursorMoved",
                "CursorMovedI",
                "ModeChanged",
            },
        }
    },
    -- Sets sections which gonna shown on lualine
    -- like on which mode you are and etc
    sections = {
        lualine_a = {"mode"},
        lualine_b = {"branch", "diff", "diagnostics"},
        lualine_c = {"filename"},
        lualine_x = {"encoding", "fileformat", "filetype"},
        lualine_y = {"progress"},
        lualine_z = {"location"}
    },
    -- Sets which of the sections are disabled
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    },
    -- Additional stuff for lualine like extensions
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}

