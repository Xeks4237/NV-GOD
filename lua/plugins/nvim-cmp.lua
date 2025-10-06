-- This file is loaded through lua/lazy/plugins.lua

-- Configuration for nvim-cmp plugin
local cmp = require("cmp")
local luasnip = require("luasnip")

return {
    cmp.setup({
        -- Enable/Disable completion (set to false to disable nvim-cmp entirely)
        enabled = true,

        -- Preselect behavior for completion items
        preselect = cmp.PreselectMode.None, -- Options: Item (first item), None (no preselection)

        -- Apparency of completions menu
        window = {
            completion = cmp.config.window.bordered({
                -- Bordered completion menu
                border = {"╭", "─", "╮", "│", "╯", "─", "╰", "│"}, -- border symbols
                col_offset = 1, -- Column offset for completion menu
                side_padding = 1, -- Padding inside the menu
            }),
            documentation = cmp.config.window.bordered({
                -- Bordered documentation window
                border = {"╭", "─", "╮", "│", "╯", "─", "╰", "│"}, -- border symbols
                max_width = 80, -- Max width of doc window
                max_height = 40, -- Max height of doc window
            }),
        },

        -- View settings for completion menu
        view = {
            entries = { name = "custom", selection_order = "top_down" }, -- Custom menu, top-to-bottom
            -- entries = { name = "wildmenu", separator = " | " }, -- Vim-style wildmenu at bottom
        },

        -- Snippet engine integration (required for snippet expansion)
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body) -- Expand snippets using LuaSnip
            end,
        },

        -- Completion sources with priority and filtering options
        sources = cmp.config.sources({
            { name = "nvim_lsp", priority = 2048, max_item_count = 20 }, -- LSP completions
            { name = "luasnip", priority = 1024, max_item_count = 15 }, -- Snippet completions
            { name = "buffer", priority = 512, max_item_count = 15 }, -- Buffer words
            { name = "path", priority = 256, max_item_count = 15 }, -- File paths
        }),

        -- Command-line completion setup
        cmdline = {
            [":"] = {
                mapping = cmp.mapping.preset.cmdline(), -- Use default cmdline mappings
                sources = cmp.config.sources({
                    { name = "path" }, -- File paths for commands
                    { name = "cmdline" }, -- Vim command completions
                }),
            },
            ["/"] = {
                mapping = cmp.mapping.preset.cmdline(), -- Use default cmdline mappings
                sources = {
                    { name = "buffer" }, -- Buffer words for search
                },
            },
            ["?"] = {
                mapping = cmp.mapping.preset.cmdline(), -- Use default cmdline mappings
                sources = {
                    { name = "buffer" }, -- Buffer words for reverse search
                },
            },
        },

        -- Performance tweaks
        performance = {
            debounce = 64, -- Delay (ms) before updating completions
            throttle = 40, -- Delay (ms) between keystrokes for updates
            fetching_timeout = 512, -- Timeout (ms) for fetching completions
            confirm_resolve_timeout = 128, -- Timeout (ms) for resolving confirmations
            async_budget = 2, -- Time (ms) to spend on async operations
            max_view_entries = 256, -- Max number of completion items to show
        },

        -- Formatting for completion menu items
        formatting = {
            fields = { "kind", "abbr", "menu" }, -- Order: kind icon, suggestion text, source info
            format = function(entry, vim_item)
                -- Add source name to menu (e.g., [LSP], [Buffer])
                vim_item.menu = ({
                    nvim_lsp = "[LSP]",
                    luasnip = "[Snippet]",
                    buffer = "[Buffer]",
                    path = "[Path]",
                })[entry.source.name] or entry.source.name
                -- Optionally add kind icons (requires nvim-web-devicons or similar)
                vim_item.kind = require("nvim-web-devicons").get_icon(vim_item.kind)
                return vim_item
            end,
        },

        -- Sorting rules for completion items
        sorting = {
            priority_weight = 5, -- Adjust influence of source priority
            comparators = {
                cmp.config.compare.offset, -- Prefer items closer to cursor
                cmp.config.compare.exact, -- Exact matches first
                cmp.config.compare.score, -- Score based on match quality
                cmp.config.compare.recently_used, -- Prioritize recently used items
                cmp.config.compare.locality, -- Prefer items from nearby buffer lines
                cmp.config.compare.kind, -- Group by item kind (e.g., function, variable)
                cmp.config.compare.sort_text, -- Sort by suggestion text
                cmp.config.compare.length, -- Shorter suggestions first
                cmp.config.compare.order, -- Fallback to source order
            },
        },

        -- Experimental features (use with caution)
        experimental = {
            ghost_text = true, -- Show inline preview of selected completion
        },

        -- Keymaps for completion menu navigation and actions
        -- See lua/keymaps/nvim-cmp.lua
        mapping = cmp.mapping.preset.insert(require("keymaps.nvim-cmp")),
    }),
}

