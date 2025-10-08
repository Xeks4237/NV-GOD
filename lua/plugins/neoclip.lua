-- This file is loaded through lua/lazy/plugins.lua

-- Configuration for neoclip
return {
    history = 1000, -- Maximum number of clipboard entries to store
    enable_persistent_history = false, -- Persists clipboard history across Neovim sessions (requires sqlite.lua plugin)
    length_limit = 1048576, -- Maximum length (in bytes) for a single clipboard entry
    continuous_sync = false, -- Enables real-time synchronization of clipboard across NeoVim instances
    db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3", -- File path for storing persistent clipboard history
    filter = nil, -- Optional function to filter clipboard entries (nil means no filtering)
    preview = true, -- Shows a preview of clipboard entries when browsing
    prompt = nil, -- Custom prompt for the clipboard picker (nil uses default)
    default_register = '"', -- Default register for clipboard operations
    default_register_macros = "q", -- Default register for macro storage
    enable_macro_history = true, -- Enables storing and managing macro history
    content_spec_column = false, -- Displays content specification column in the picker
    disable_keycodes_parsing = false, -- Disables parsing of keycodes in clipboard entries
    dedent_picker_display = false, -- Removes indentation in picker display for cleaner visuals
    initial_mode = "insert", -- Sets initial mode for picker (e.g., "insert" or "normal")
    on_select = {
        move_to_front = false, -- Moves selected entry to front of history
        close_telescope = true, -- Closes Telescope picker after selection
    },
    on_paste = {
        set_reg = false, -- Sets the selected entry to a register on paste
        move_to_front = false, -- Moves pasted entry to front of history
        close_telescope = true, -- Closes Telescope picker after pasting
    },
    on_replay = {
        set_reg = false, -- Sets the macro to a register on replay
        move_to_front = false, -- Moves replayed macro to front of history
        close_telescope = true, -- Closes Telescope picker after replaying
    },
    on_custom_action = {
        close_telescope = true, -- Closes Telescope picker after custom actions
    },
    keys = require("keymaps.neoclip"), -- Loads custom keymappings for neoclip
}
