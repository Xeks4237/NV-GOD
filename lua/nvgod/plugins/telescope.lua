return {
    "nvim-telescope/telescope.nvim",
    name = "telescope",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
    },
    opts = {
        defaults = {
            prompt_prefix = "> ", -- Symbol before the prompt
            selection_caret = "➤ ", -- Symbol before selected item
            entry_prefix = "  ", -- Prefix for non-selected items
            initial_mode = "insert", -- Start in insert mode (options: insert, normal)
            selection_strategy = "reset", -- Keep cursor at top on new query (options: reset, follow)
            sorting_strategy = "ascending", -- Sort results top-to-bottom (options: ascending, descending)
            layout_strategy = "horizontal", -- Default layout (options: horizontal, vertical, center, cursor)
            layout_config = { -- Layout-specific settings
                horizontal = {
                    prompt_position = "top", -- Prompt at top (options: top, bottom)
                    preview_width = 0.55, -- Preview window width (percentage)
                    results_width = 1.0, -- Results window width
                },
                vertical = {
                    mirror = false, -- Don’t mirror results
                    -- gonna be mirrored by defauly if you have prompt_position = "top"
                },
                width = 0.90, -- Window width (percentage or fixed)
                height = 0.80, -- Window height (percentage or fixed)
                preview_cutoff = 120, -- Min chars to show preview
            },
            path_display = { "truncate" }, -- Truncate long paths (options: truncate, shorten, absolute)
            winblend = 20, -- Transparency (0 = opaque, 100 = fully transparent)
            border = true, -- Show borders around windows
            borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }, -- Border characters
            color_devicons = true, -- Enable devicon colors (requires nvim-web-devicons)
            use_less = true, -- Use less-like scrolling
            set_env = { ["COLORTERM"] = "truecolor" }, -- Enable truecolor support (Needs your terminal to have support for it)
            vimgrep_arguments = {
                -- Arguments for ripgrep in live_grep
                "rg",
                "--color=always",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--smart-case",
            },
            dynamic_preview_title = true, -- Dynamically update preview title
            wrap_results = true, -- Don’t wrap result text
            scroll_strategy = "cycle", -- Cycle through results when scrolling (options: cycle, limit)
            history = { -- Command history settings
                path = "~/.local/share/nvim/telescope_history", -- History file path
                limit = 1000, -- Max history entries
            },
        },
        pickers = {
            find_files = {
                find_command = { "fd", "--type", "f", "--strip-cwd-prefix" }, -- Use fd for file finding
                hidden = true, -- Show hidden files
                no_ignore = true, -- Please Respect .gitignore
            },
            live_grep = {
                only_sort_text = true, -- Only sort text, not file paths
                max_results = 1000, -- Limit results for performance
            },
            buffers = {
                sort_lastused = true, -- Sort by last used
                ignore_current_buffer = true, -- Skip current buffer
                show_all_buffers = true, -- Show all buffers, including unlisted
            },
            oldfiles = {
                only_cwd = true, -- Show only files in current working directory
            },
            git_files = {
                show_untracked = true, -- Include untracked files
            },
            lsp_references = {
                include_declaration = true, -- Include symbol declarations
            },
            lsp_definitions = {
                jump_type = "never", -- Don’t jump, show in Telescope
            },
            lsp_implementations = {
                jump_type = "never", -- Don’t jump, show in Telescope
            },
            diagnostics = {
                line_width = 120, -- Limit diagnostic line width
            },
            colorscheme = {
                enable_preview = true,
            },
        },
        extensions = {
            -- (fzf Must be installed separately!)
            harpoon = true,
            fzf = {
               fuzzy = true, -- Enable fuzzy matching
               override_generic_sorter = true, -- Override default sorter
               override_file_sorter = true, -- Override file sorter
               case_mode = "smart_case", -- Case sensitivity (smart_case, ignore_case, respect_case)
            },
        },
    },
}

