return {
    -- General plugin settings
    debug = false, -- Disable debug mode for production
    throttle = 1000 / 60, -- Update frequency (60 FPS)
    health = {
        checker = true, -- Enable health checks for Noice
    },
    -- Command line settings
    cmdline = {
        enabled = true, -- Enable Noice cmdline replacement
        view = "cmdline_popup", -- Default view for : commands
        opts = {}, -- Additional options for cmdline_popup view
        format = {
            -- Define patterns and icons for different cmdline modes
            cmdline = { pattern = "^:", icon = "> ", lang = "vim" }, -- : commands
            search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" }, -- / search
            search_up = { kind = "search", pattern = "^\\?", icon = " ", lang = "regex" }, -- ? search
            filter = { pattern = "^:%s*!", icon = "$ ", lang = "bash" }, -- ! shell commands
            lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = " ", lang = "lua" }, -- Lua commands
            help = { pattern = "^:%s*he?l?p?%s+", icon = " " }, -- Help commands
            input = { view = "cmdline", icon = "> " }, -- Input mode (e.g., for :%s)
        },
    },
    -- Message handling
    messages = {
        enabled = true, -- Enable message handling (e.g., :echo, :print)
        view = "notify", -- Default view for messages
        view_error = "notify", -- View for error messages
        view_warn = "notify", -- View for warning messages
        view_history = "messages", -- View for :messages
        view_search = "virtualtext", -- View for search count messages
    },
    -- Popup menu settings (for completion, e.g., cmdline completion)
    popupmenu = {
        enabled = true, -- Enable popup menu for cmdline completion
        backend = "nui", -- Use nui.nvim for rendering
        kind_icons = true, -- Show icons for completion kinds
    },
    -- Redirect specific commands to different views
    redirect = {
        -- Example: Redirect :make to a split
        { view = "split", filter = { cmdline = "^:%s*make%s+" } },
    },
    -- Notification settings
    notify = {
        enabled = true, -- Enable notifications via nvim-notify
        view = "notify", -- Default view for notifications
    },
    -- LSP integration
    lsp = {
        progress = {
            enabled = true, -- Show LSP progress messages
            format = "lsp_progress", -- Format for progress messages
            format_done = "lsp_progress_done", -- Format for completed progress
            throttle = 1000 / 60, -- Update frequency (60 FPS)
            view = "mini", -- View for LSP progress (mini is compact)
        },
        override = {
            -- Override LSP functions for better integration
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- Enhance nvim-cmp docs
        },
        hover = {
            enabled = true, -- Replace LSP hover with Noice
            view = nil, -- Use default hover view (nil = floating)
            opts = {}, -- Additional options for hover view
        },
        signature = {
            enabled = true, -- Replace LSP signature help
            auto_open = {
                enabled = true, -- Auto-open signature help
                trigger = true, -- Trigger on typing
                luasnip = true, -- Trigger on LuaSnip snippets
                throttle = 50, -- Debounce signature help (ms)
            },
            view = nil, -- Use default signature view
            opts = {}, -- Additional options for signature view
        },
        message = {
            enabled = true, -- Show LSP messages in Noice
            view = "notify", -- Default view for LSP messages
            opts = {}, -- Additional options for LSP message view
        },
        documentation = {
            view = "hover", -- Default view for documentation
            opts = {
                lang = "markdown", -- Format for documentation
                replace = true, -- Replace default LSP docs
                render = "plain", -- Render style
                format = { "{message}" }, -- Format template
                win_options = {
                    concealcursor = "n", -- Cursor conceal behavior
                    conceallevel = 3, -- Conceal level for markdown
                },
            },
        },
    },
    -- Markdown rendering
    markdown = {
        hover = {
            ["|(%S-)|"] = vim.cmd.help, -- Link pattern for help tags
            ["%[.-%]%((%S-)%)"] = require("noice.util").open, -- Markdown link handler
        },
        highlights = {
            ["|%S-|"] = "@text.reference", -- Highlight for help tags
            ["@%S+"] = "@parameter", -- Highlight for parameters
            ["^%s*(Parameters:)"] = "@text.title", -- Parameter titles
            ["^%s*(Return:)"] = "@text.title", -- Return titles
            ["^%s*(See also:)"] = "@text.title", -- See also titles
            ["{%S-}"] = "@parameter", -- Parameter highlights
        },
    },
    -- Smart move settings (avoid cursor jumping)
    smart_move = {
        enabled = true, -- Enable smart cursor movement
        excluded_filetypes = { "cmp_menu", "cmp_docs", "notify" }, -- Skip for these filetypes
    },
    -- View customization
    views = {
        cmdline_popup = {
            position = {
                row = "30%", -- Center vertically
                col = "50%", -- Center horizontally
            },
            size = {
                width = "60%", -- Compact width
                height = "auto", -- Auto-height for multi-line
            },
            border = {
                style = "rounded", -- Rounded borders
                padding = { 0, 1 }, -- Inner padding
                text = {
                    top = " Command ", -- Title
                    top_align = "center", -- Alighment of Text
                },
            },
            win_options = {
                winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel",
                winblend = 0, -- Transparency in percentage
            },
        },
        -- Popup menu customization
        popupmenu = {
            relative = "editor",
            position = {
                row = 12, -- Slightly below cmdline
                col = "50%",
            },
            size = {
                width = 60, -- Fixed width for palette
                height = 10, -- Fixed height for palette
            },
            border = {
                style = "rounded",
                padding = { 0, 1 },
            },
            win_options = {
                winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
            },
        },
        notify = {
            size = {
                width = 50, -- Compact notification width
                height = "auto",
            },
            border = {
                style = "rounded",
            },
            win_options = {
                winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
            },
        },
        mini = {
            timeout = 3000, -- Duration for mini messages
            position = {
                row = -2, -- Near bottom
                col = "100%", -- Right-aligned
            },
            win_options = {
                winblend = 30, -- Slight transparency
            },
        },
        split = {
            enter = false, -- Don't auto-enter split
            size = "20%", -- Default split height
        },
        vsplit = {
            enter = false, -- Don't auto-enter vsplit
            size = "20%", -- Default vsplit width
        },
    },
    -- Routing rules for messages
    routes = {
        -- Show written messages in mini view
        {
            filter = { event = "msg_show", kind = "wmsg" },
            view = "mini",
        },
        -- Skip search count if unchanged
        {
            filter = { event = "msg_show", find = "search hit" },
            opts = { skip = true },
        },
        -- Route long messages to split
        {
            filter = { event = "msg_show", min_height = 10 },
            view = "split",
        },
    },
    -- Statusline components
    status = {
        lsp_progress = { event = "lsp:progress" }, -- Show LSP progress in statusline
        ruler = { event = "cmd" }, -- Show ruler in statusline
        mode = { event = "mode" }, -- Show mode in statusline
    },
    -- Presets for common configurations
    presets = {
        bottom_search = true, -- Place / and ? searches at bottom
        command_palette = true, -- Enable ?-like command palette
        long_message_to_split = true, -- Split long messages
        inc_rename = true, -- Enable inc-rename UI
        lsp_doc_border = true, -- Add border to LSP docs
    },
    -- Command history settings
    history = {
        view = "split", -- Default view for :messages
        opts = {
            enter = true, -- Auto-enter history split
            format = "details", -- Detailed history format
            max_height = 15, -- Max height for history split
        },
        filter = {
            any = {
                { event = "notify" },
                { error = true },
                { warning = true },
                { event = "msg_show", kind = { "" } },
                { event = "lsp", kind = "message" },
            },
        },
    },
    -- Experimental features
    experimental = {
        lsp_scrollbar = false, -- Add scrollbar to LSP hovers (experimental)
    },
}

