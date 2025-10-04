-- This file is loaded through lua/lazy/plugins.lua

-- Configuration for nvim-notify
return {
    -- Minimum level to show (debug, trace, info, warn, error, off)
    level = "warn",

    -- Use the "slide" stage for right-to-left sliding animation
    stages = "slide",

    -- Timeout for notifications in ms. Set to 0 for no timeout.
    timeout = 2500,

    -- Maximum width of notification window
    max_width = math.floor(vim.o.columns * 0.45), -- 45% of editor width

    -- Maximum height of notification window
    max_height = math.floor(vim.o.lines * 0.40), -- 40% of editor height


    -- Lexical scope for highlight groups: "local" (default), "global"
    lex_scope = "global",

    -- FPS for animations
    fps = 60,

    -- Render function for stages
    render = "default",

    -- Icons for different levels
    icons = {
        debug = "",
        trace = "",
        info = "",
        warn = "!",
        error = "",
    },

    -- Configure notifications to appear in needed corner
    -- if it's true than notifications gonna be shown in right-top corner
    -- if it's false than notifications gonna be shown in right-bottom corner
    top_down = false,

    -- Custom window options to anchor notifications to bottom-right
    win_options = {
        relative = "editor",
        anchor = "SE",  -- Southeast (bottom-right) corner
        border = "rounded",
        -- Optional: adjust offsets from the edge if needed
        col = vim.o.columns - 2,  -- Small offset from right edge
        row = vim.o.lines - 2,    -- Small offset from bottom edge
    },

    -- Enable mouse support
    mouse = true,

    -- Whether to ignore insert mode notifications
    ignore_insert = true,

    -- Custom commands to register
    commands = {},
}

