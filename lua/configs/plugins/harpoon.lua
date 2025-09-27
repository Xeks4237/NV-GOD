return {
    -- Configuration for the Harpoon menu UI
    menu = {
        -- Dynamically set the menu width, ensuring it doesn't exceed 80 or the window width minus 4
        width = function()
            return math.min(vim.api.nvim_win_get_width(0) - 4, 80)
        end,
    },
    -- Global settings for Harpoon behavior
    global_settings = {
        -- Whether to save the harpoon list when toggling the menu (false = don't save on toggle)
        save_on_toggle = false,
        -- Automatically save the harpoon list when it changes (true = auto-save on change)
        save_on_change = true,
        -- Automatically enter the command when sending it to a terminal (false = stay in menu)
        enter_on_sendcmd = false,
        -- Automatically close tmux windows when Harpoon closes (false = keep tmux windows open)
        tmux_autoclose_windows = false,
        -- Filetypes to exclude from Harpoon's marking functionality (e.g., ignore "harpoon" filetype)
        excluded_filetypes = { "harpoon" },
        -- Associate marks with the current Git branch (false = marks are global, not branch-specific)
        mark_branch = false,
        -- Display Harpoon marks in the tabline (false = disable tabline integration)
        tabline = true,
        -- Prefix for tabline entries (adds spacing before each mark in tabline)
        tabline_prefix = "    ",
        -- Suffix for tabline entries (adds spacing after each mark in tabline)
        tabline_suffix = "    ",
        -- Enable Telescope integration for Harpoon marks (true = use Telescope UI for mark selection)
        telescope = true,
        -- Customize Telescope prompt title for Harpoon marks
        telescope_prompt_title = "Harpoon Marks",
        -- Optional: Define keymaps for Telescope integration (default keymaps are used if not specified)
        telescope_keymaps = {
            -- Select mark with Enter (default)
            select = "<CR>",
            -- Delete mark with Ctrl+d (optional customization)
            delete = "<C-x>",
        },
    },
    -- Project-specific configurations (e.g., terminal commands for specific directories)
    projects = {
        -- Example: Configuration for a specific project directory
        --["$HOME/personal/project/directory"] = {
        --    term = {
        --        -- Commands to run in the terminal for this project
        --        cmds = {
        --            "./env && npx ts-node src/index.ts"
        --        }
        --    }
        --}
    }
}

