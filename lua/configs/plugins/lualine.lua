-- For now this only has default configuration of lualine
-- with some extra comments

return {
    options = {
        icons_enabled = true,
        -- Theme sets colors of lualine using colors of your coloracheme
        -- "auto" chooses theme automatically
        theme = 'auto',
        -- Sets a symbhols which gonna be used like a seperators for components and sections
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        -- Disables some stuff to show lualine correctly
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
            -- Sets refresh rate of elements
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
            refresh_time = 16, -- Approximatly 60fps
            events = {
                -- Events which triggers update of lualine
                'WinEnter',
                'BufEnter',
                'BufWritePost',
                'SessionLoadPost',
                'FileChangedShellPost',
                'VimResized',
                'Filetype',
                'CursorMoved',
                'CursorMovedI',
                'ModeChanged',
            },
        }
    },
    -- Sets sections which gonna shown on lualine
    -- like on which mode you are and etc
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    -- Sets which of the sections are disabled
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    -- Settings for other thinks which I gonna write later...
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
