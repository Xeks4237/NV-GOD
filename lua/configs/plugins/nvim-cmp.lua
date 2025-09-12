local cmp = require("cmp")
local luasnip = require("luasnip")

return {
    -- Enable/disable completion (set to false to disable nvim-cmp entirely)
    enabled = true,

    -- Preselect behavior for completion items
    preselect = cmp.PreselectMode.Item, -- Options: Item (first item), None (no preselection)

    -- Snippet engine integration (required for snippet expansion)
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body) -- Expand snippets using LuaSnip
        end,
    },

    -- Key mappings for completion menu navigation and actions
    mapping = cmp.mapping.preset.insert({
        ["<C-n>"] = cmp.mapping.select_next_item(), -- Next suggestion
        ["<C-p>"] = cmp.mapping.select_prev_item(), -- Previous suggestion
        ["<C-b>"] = cmp.mapping.scroll_docs(-4), -- Scroll docs up
        ["<C-f>"] = cmp.mapping.scroll_docs(4), -- Scroll docs down
        ["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion manually
        ["<C-e>"] = cmp.mapping.abort(), -- Cancel completion
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection, select if none
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item() -- Cycle to next suggestion
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump() -- Expand or jump to next snippet placeholder
            else
                fallback() -- Fallback to default Tab behavior
            end
        end, { "i", "s" }), -- Apply in insert and select modes
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item() -- Cycle to previous suggestion
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1) -- Jump to previous snippet placeholder
            else
                fallback() -- Fallback to default Shift-Tab behavior
            end
        end, { "i", "s" }),
    }),

    -- Completion sources with priority and filtering options
    sources = cmp.config.sources({
        { name = "nvim_lsp", priority = 1000, max_item_count = 20 }, -- LSP completions
        { name = "luasnip", priority = 750, max_item_count = 10 }, -- Snippet completions
        { name = "buffer", priority = 500, max_item_count = 15 }, -- Buffer words
        { name = "path", priority = 250, max_item_count = 10 }, -- File paths
    }),

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

    -- Completion menu appearance
    window = {
        completion = cmp.config.window.bordered({
            -- Bordered completion menu
            border = "rounded", -- Border style: single, double, rounded, none
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None",
            col_offset = 0, -- Column offset for completion menu
            side_padding = 1, -- Padding inside the menu
        }),
        documentation = cmp.config.window.bordered({
            -- Bordered documentation window
            border = "rounded",
            max_width = 80, -- Max width of doc window
            max_height = 30, -- Max height of doc window
        }),
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
        debounce = 60, -- Delay (ms) before updating completions
        throttle = 30, -- Delay (ms) between keystrokes for updates
        fetching_timeout = 500, -- Timeout (ms) for fetching completions
        confirm_resolve_timeout = 80, -- Timeout (ms) for resolving confirmations
        async_budget = 1, -- Time (ms) to spend on async operations
        max_view_entries = 200, -- Max number of completion items to show
    },

    -- View settings for completion menu
    view = {
        entries = { name = "custom", selection_order = "top_down" }, -- Custom menu, top-to-bottom
        -- entries = { name = "wildmenu", separator = " | " }, -- Vim-style wildmenu
    },
}
