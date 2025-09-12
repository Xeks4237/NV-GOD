local telescope = require("telescope")
local actions = require("telescope.actions")

return {
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
                results_width = 0.8, -- Results window width
            },
            vertical = {
                mirror = false, -- Don’t mirror results
            },
            width = 0.87, -- Window width (percentage or fixed)
            height = 0.80, -- Window height (percentage or fixed)
            preview_cutoff = 120, -- Min chars to show preview
        },
        file_sorter = require("telescope.sorters").get_fuzzy_file, -- Default fuzzy sorter
        generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter, -- Generic fuzzy sorter
        path_display = { "truncate" }, -- Truncate long paths (options: truncate, shorten, absolute)
        winblend = 0, -- Transparency (0 = opaque, 100 = fully transparent)
        border = true, -- Show borders around windows
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }, -- Border characters
        color_devicons = true, -- Enable devicon colors (requires nvim-web-devicons)
        use_less = true, -- Use less-like scrolling
        set_env = { ["COLORTERM"] = "truecolor" }, -- Enable truecolor support
        file_previewer = require("telescope.previewers").vim_buffer_cat.new, -- File previewer
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new, -- Grep previewer
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new, -- Quickfix previewer
        buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker, -- Buffer previewer
        mappings = { -- Key mappings for Telescope
            i = { -- Insert mode mappings
                ["<C-n>"] = actions.move_selection_next, -- Next item
                ["<C-p>"] = actions.move_selection_previous, -- Previous item
                ["<C-c>"] = actions.close, -- Close Telescope
                ["<C-j>"] = actions.cycle_history_next, -- Next prompt history
                ["<C-k>"] = actions.cycle_history_prev, -- Previous prompt history
                ["<CR>"] = actions.select_default, -- Select item
                ["<C-x>"] = actions.select_horizontal, -- Open in horizontal split
                ["<C-v>"] = actions.select_vertical, -- Open in vertical split
                ["<C-t>"] = actions.select_tab, -- Open in new tab
                ["<C-u>"] = actions.preview_scrolling_up, -- Scroll preview up
                ["<C-d>"] = actions.preview_scrolling_down, -- Scroll preview down
            },
            n = { -- Normal mode mappings
                ["<C-n>"] = actions.move_selection_next, -- Next item
                ["<C-p>"] = actions.move_selection_previous, -- Previous item
                ["<C-c>"] = actions.close, -- Close Telescope
                ["<CR>"] = actions.select_default, -- Select item
                ["<C-x>"] = actions.select_horizontal, -- Open in horizontal split
                ["<C-v>"] = actions.select_vertical, -- Open in vertical split
                ["<C-t>"] = actions.select_tab, -- Open in new tab
                ["<C-u>"] = actions.preview_scrolling_up, -- Scroll preview up
                ["<C-d>"] = actions.preview_scrolling_down, -- Scroll preview down
                ["q"] = actions.close, -- Close Telescope
            },
        },
        vimgrep_arguments = { -- Arguments for ripgrep in live_grep
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
        },
        dynamic_preview_title = true, -- Dynamically update preview title
        wrap_results = false, -- Don’t wrap result text
        scroll_strategy = "cycle", -- Cycle through results when scrolling (options: cycle, limit)
        history = { -- Command history settings
            path = "~/.local/share/nvim/telescope_history", -- History file path
            limit = 100, -- Max history entries
        },
    },
    pickers = {
        find_files = {
            find_command = { "fd", "--type", "f", "--strip-cwd-prefix" }, -- Use fd for file finding
            hidden = true, -- Show hidden files
            no_ignore = false, -- Respect .gitignore
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
    },
    extensions = {
        -- Example: Enable extensions like fzf or file_browser (must be installed separately)
        -- fzf = {
        --     fuzzy = true, -- Enable fuzzy matching
        --     override_generic_sorter = true, -- Override default sorter
        --     override_file_sorter = true, -- Override file sorter
        --     case_mode = "smart_case", -- Case sensitivity (smart_case, ignore_case, respect_case)
        -- },
    },
}
